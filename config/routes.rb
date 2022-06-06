Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :services do
    resources :bookings, only: [:new, :create, :edit, :update]

  end

  resources :bookings, only: [:index, :destroy]
  resources :bookings, only:  [:show] do
    post "set_approved", to: "bookings#set_approved"
    post "set_confirmed", to: "bookings#set_confirmed"
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
