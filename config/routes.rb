Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root 'article#index'
  resources :articles
  get 'articles/new', to: 'articles#new'
end
