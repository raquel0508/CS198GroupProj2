Rails.application.routes.draw do

  root to:"home#index"

  get 'home/index'

  devise_for :users
  get 'users/new'

  resources :users
  resources :recipes
  resources :ingredients
  resources :recipesteps

  patch 'like', to:'recipes#like'
  get '/recipes/new', to: 'recipes#new'
  post 'recipes', to: 'recipes#create'


end
