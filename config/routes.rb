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
    resources :reviews

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :mobile_phones, only: [:index, :show]
  resources :users, only: [:show, :edit, :update]
  resources :addresses
  resources :carts, only: [:show, :create]
  resources :order_mobile_phones, only:[:create, :update, :destroy]
  resources :orders, only: [:index, :show]
  resources :locales, only: [:update]
  resources :reviews, only: [:new, :create]
  root to: "home#index"
end