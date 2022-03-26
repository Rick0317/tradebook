Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :orders
  post 'books/new' => 'books#new'
  root to:"books#index"
end
