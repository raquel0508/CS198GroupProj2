Rails.application.routes.draw do

  root to:"home#index"

  get "/friends", to: "friends#index", as: :friend
  post "/friends/remove", to: "friends#remove", as: :remove
  post "/friends/accept", to: "friends#accept", as: :accept
  post "/friends/deny", to: "friends#deny", as: :deny
  post "/friends", to: "friends#add", as: :friend_add

  devise_for :users

  patch 'like', to:'recipes#like'
  get '/recipes/search', to: 'recipes#search', as: :search
  get '/recipes/found', to: 'recipes#found', as: :found
  get '/recipes/new', to: 'recipes#new'
  post 'recipes', to: 'recipes#create'
  post 'recipes/create', to:"recipes#create"
  
  resources :users
  resources :recipes
  resources :ingredients
  resources :recipesteps
end
