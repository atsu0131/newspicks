class ArticleController < ApplicationController
  before_action :authenticate_user!, only: :authentication
  def index
  end

  def create
  end

  def authentication
  end

    private
    def move_to_index
      redirect_to action: :index
      # indexアクションを強制的に実行する
    end
end
