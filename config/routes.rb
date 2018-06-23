Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :stock_keeping_units
  post '/import', to: 'stock_keeping_units#import'

end
