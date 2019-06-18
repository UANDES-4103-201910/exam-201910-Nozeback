Rails.application.routes.draw do
  devise_for :users
  resources :products
  get 'home/index'
  resources :order_items
  resources :orders
  resources :addresses
  resources :order_statuses
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
