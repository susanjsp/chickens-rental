Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/my_dashboard/', to: 'dashboard#show'

  get '/my_chickens/', to: 'chickens#my_chickens'

  resources :chickens do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :destroy, :my_bookings] do
    resources :reviews, only: [:new, :create]
  end

end
