Rails.application.routes.draw do
  
  root 'home#index'

  resources :jams

  post '/api/v1/jams/play', to: 'api/v1/jams#play'
  
end