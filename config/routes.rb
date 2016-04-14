Rails.application.routes.draw do

  root to:"home#index"
  
  get 'home/index'

  devise_for :users
  get 'users/new'

  resources :users
  resources :recipes


end
