Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :books, only: [:index, :show, :edit, :update, :y]
  get 'homes/about' => 'homes#index'
end
