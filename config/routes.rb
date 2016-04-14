Rails.application.routes.draw do
  
  devise_for :users
  get 'users/new'

  resources :users
  resources :recipes
  root to:"homes#index"


end
