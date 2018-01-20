Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :addresses
    resources :colors
    resources :currencies
    resources :manufacturers
    resources :mobile_phones
    resources :mobile_phone_pictures
    resources :operation_systems
    resources :orders
    resources :order_mobile_phones
    resources :roles

    root to: "users#index"
  end

  devise_for :users

  root to: "home#index"
end