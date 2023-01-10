Rails.application.routes.draw do
  resources :post_types
  resources :likes, only: [:index, :create]
  resources :posts, only: [:index, :create, :show, :destroy]
  resources :comments, only: [:index, :create, :show, :destroy]
  resources :users, only: [:index, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
