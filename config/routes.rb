Rails.application.routes.draw do
  root 'application#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
  post 'event_vendor', to: 'event_vendors#create'
  resources :events
  resources :venues
  resources :clients
  resources :vendors, only: [:index, :show]
  resources :reviews, only: [:create]
end

