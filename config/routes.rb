Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :services do
    resources :bookings, only: [:new, :create, :edit, :update]

  end

  resources :bookings, only: [:index, :destroy, :show] do
    member do
      post :set_approved
      post :set_confirmed
    end
  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
