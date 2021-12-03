Rails.application.routes.draw do
  get 'observations/gallery'
  resources :birds
  devise_for :users
  resources :observations
  root 'observations#index'
end
