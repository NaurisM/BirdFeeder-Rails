Rails.application.routes.draw do
  resources :birds
  devise_for :users
  resources :observations
  root 'observations#index'
end
