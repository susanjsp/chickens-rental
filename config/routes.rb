Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :chickens, only: [:edit, :update]

  # get    "chickens/:id/edit", to: "chickens#edit", as: :edit_chicken
  # patch  "chickens/:id",      to: "chickens#update"

end
