Rails.application.routes.draw do
  root 'events#index'
  get 'static_pages/secret'
  devise_for :users
  resources :events
  resources :users, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
