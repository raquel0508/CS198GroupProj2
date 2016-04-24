Rails.application.routes.draw do

  root to:"home#index"

  get "/friends", to: "friends#index", as: :friend
  post "/friends/remove", to: "friends#remove", as: :remove
  post "/friends/accept", to: "friends#accept", as: :accept
  post "/friends/deny", to: "friends#deny", as: :deny
  post "/friends", to: "friends#add", as: :friend_add

  devise_for :users

  resources :users
  resources :recipes
  resources :friends


end
