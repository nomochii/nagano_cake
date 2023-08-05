Rails.application.routes.draw do
  devise_for :customers, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  get 'about' => 'homes#about'

  namespace :admin do
    resources :admins
    resources :customers
    resources :items
    resources :order_details_
    resources :orders
    resources :homes
  end

  namespace :public do
    resources :admins
    resources :customers
    resources :items
    resources :order_details_
    resources :orders
    resources :cart_items
    resources :homes
  end



end
