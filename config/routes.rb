Rails.application.routes.draw do
  resources :events
  resources :venues
  resources :clients
  resources :vendors, only: [:index, :show]
  resources :reviews, only: [:create]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
