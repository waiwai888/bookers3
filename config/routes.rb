Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  get 'homes/about' => 'homes#index'
end
