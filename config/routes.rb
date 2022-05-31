Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  devise_for :users do
  end

  resources :bookings, only: [:index, :show, :destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
