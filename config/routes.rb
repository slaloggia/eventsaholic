Rails.application.routes.draw do
  root 'application#home'
  resources :events
  resources :venues
  resources :clients
  resources :vendors, only: [:index, :show]
  resources :reviews, only: [:create]
  resources :event_vendors, only: [:create]
end
