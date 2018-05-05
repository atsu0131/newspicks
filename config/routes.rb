Rails.application.routes.draw do
  devise_for :users
  root 'article#index'
 get 'article', to: 'article#index'
end
