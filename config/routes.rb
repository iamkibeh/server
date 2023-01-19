Rails.application.routes.draw do
  resources :post_types, only: [:index, :create ]
  resources :likes, only: [:index, :create]
  resources :posts, only: [:index, :create, :show, :destroy]
  resources :comments, only: [:index, :create, :show, :destroy]
  resources :users, only: [:index, :show, :destroy, :update]

  post "/login", to: "authentication#create"
  get "/me", to: "users#me"
  post "/signup", to: "users#create"

end
