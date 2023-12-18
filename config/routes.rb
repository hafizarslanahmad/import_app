Rails.application.routes.draw do
  devise_for :registrations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "homes#index"
  resources :organizations
  resources :users
  resources :programs
end
