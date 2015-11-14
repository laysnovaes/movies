Rails.application.routes.draw do
  resources :movies
  resources :genres
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
