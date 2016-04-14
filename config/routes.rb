Rails.application.routes.draw do

  resources :users
  resources :recipes
  root to:"homes#index"


end
