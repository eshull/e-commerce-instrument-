Rails.application.routes.draw do
  resources :orders
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, skip: [:show], controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
  root :to => 'products#index'
  resources :order_items
  resources :products
  resource :cart, only: [:show]
  resource :user, only: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
