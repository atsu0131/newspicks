class ArticleController < ApplicationController
  def index
  # @article = Article.all
  end

  def create
  @article = Article.new(article_params)
    if @article.save
      flash[:success] = '正常に投稿されました'
      redirect_to @article
    else
      flash.now[:danger] = '投稿されませんでした'
      render :new
    end
  end

  def new
  @article = Article.new
  end

  def authentication

  end

def show
    @article = Article.find(params[:id])
  end

end
