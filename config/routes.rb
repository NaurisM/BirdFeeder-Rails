Rails.application.routes.draw do
  devise_for :users
  resources :observations
  root 'observations#index'
end
