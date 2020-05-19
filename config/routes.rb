Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :djs do 
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit, :destroy, :show]
  
end
