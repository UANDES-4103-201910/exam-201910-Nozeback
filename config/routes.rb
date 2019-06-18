Rails.application.routes.draw do
  get 'home/index'
  resources :order_items
  resources :orders
  resources :addresses
  resources :users
  resources :products
  resources :order_statuses
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
