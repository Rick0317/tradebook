Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index]
  root to:"book#index"
end
