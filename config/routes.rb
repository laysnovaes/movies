Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :votes
  resources :movies
  resources :genres
  mount Upmin::Engine => '/admin'
  root to: 'movies#index'
  devise_for :users
  resources :users
end
