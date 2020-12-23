Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  get 'posts/index'
  root to: "posts#index"
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
