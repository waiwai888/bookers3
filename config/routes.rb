Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:new, :create, :index, :show, :destroy]
  resources :books
  get 'homes/about' => 'homes#index'
end
