Rails.application.routes.draw do
  devise_for :users
  resources :book, only: [:index, :new, :create]
  root to:"book#index"
end
