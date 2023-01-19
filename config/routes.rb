Rails.application.routes.draw do
  resources :post_types, only: [:index, :create ]
  resources :likes, only: [:index, :create]
  resources :comments, only: [:index, :create, :show, :destroy]
  resources :users, only: [:index, :show, :destroy, :update]
  resources :posts, only: [:index, :create, :show, :destroy] do
    resources :likes
  end
  
  post "/login", to: "authentication#create"
  get "/me", to: "users#me"
  post "/signup", to: "users#create"

end
