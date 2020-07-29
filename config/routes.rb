Rails.application.routes.draw do
  devise_for :users
  root to: 'areas#index'
  resources :articles, only: [:index, :new, :create, :show]
  resources :users, only: :show
  resources :areas, only: :index
end