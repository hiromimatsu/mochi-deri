Rails.application.routes.draw do
  resources :article, only: :index
end