Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

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
  resources :mobile_phones, only: [:index, :show]
  resources :users, only: [:show, :edit, :update]
  resources :addresses
  resources :carts, only: [:show]
  resources :order_mobile_phones, only:[:create, :update, :destroy]


  root to: "home#index"
end