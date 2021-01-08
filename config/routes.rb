Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  get 'posts/index'
  root to: "posts#index"

  resources :posts do
    resources :comments, only: [:create]
  end

  resources :posts do
    resource :post_likes, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update, :destroy]
end
