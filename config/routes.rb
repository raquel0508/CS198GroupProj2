Rails.application.routes.draw do

  root to:"home#index"

  get 'home/index'

  devise_for :users
  get 'users/new'

  resources :users
  resources :recipes

  post 'recipes/create', to:"recipes#create"
  


end
