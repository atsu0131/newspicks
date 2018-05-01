Rails.application.routes.draw do
  devise_for :users
 get 'article', to: 'article#index'
end
