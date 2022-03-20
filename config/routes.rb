Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index, :new, :create]
  post 'books/new' => 'books#new'
  root to:"books#index"
end
