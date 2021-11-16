Rails.application.routes.draw do
  resources :observations
  root 'observations#index'
end
