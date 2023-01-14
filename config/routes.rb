Rails.application.routes.draw do
  resources :post_types
  resources :likes, only: [:index, :create]
  resources :posts, only: [:index, :create, :show, :destroy]
<<<<<<< HEAD
  resources :comments, only: [:index, :create, :show, :destroy]
  resources :users, only: [:index, :create, :show]
=======
  resources :comments, only: [:index, :create, :destroy]
  resources :users, only: [:index, :destroy]
>>>>>>> main
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "session#create"
  get "/me", to: "users#show"
  post "/signup", to: "users#create"

end
