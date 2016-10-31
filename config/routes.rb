Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :categories
  resources :products
  resources :purchases

  get 'profile' => 'pages#profile'
  get 'dashboard' => 'purchases#dashboard'
end
