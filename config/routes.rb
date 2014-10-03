Rails.application.routes.draw do
  
  root 'home#index'

  resources :jams, only: [:show]
  
end