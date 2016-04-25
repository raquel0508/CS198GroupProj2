Rails.application.routes.draw do

  root to:"home#index"

  get 'home/index'

  devise_for :users
  get 'users/new'

  patch 'like', to:'recipes#like'
  get '/recipes/search', to: 'recipes#search', as: :search
  get '/recipes/found', to: 'recipes#found', as: :found
  get '/recipes/new', to: 'recipes#new'
  post 'recipes', to: 'recipes#create'

  resources :users
  resources :recipes
  resources :ingredients
  resources :recipesteps
end
