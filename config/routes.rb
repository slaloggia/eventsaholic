Rails.application.routes.draw do
  root 'application#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'

  resources :clients do
    get '/upcoming-events', to: 'clients#upcoming_events'
    get '/past-events', to: 'clients#past_events'
  end

  resources :events do
    resources :reviews, only: [:index, :create]
  end
  
  resources :venues
  resources :vendors, only: [:index, :show]
  resources :reviews, only: [:create]
  resources :event_vendors, only: [:create]
end

