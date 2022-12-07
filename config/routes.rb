Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :pets, only: ['index', 'show', 'new', 'edit', 'update'] do
    resources :list_pets, only: ['index', 'create']
  end
  resources :shelters, only: ['show']
  get '/conditions', to: 'pages#conditions'
  patch '/profiles', to: 'profiles#confirm'
  resources :dashboards, only: ['show']

  resources :users do
    resources :list_pets, only: ['index', 'destroy']
  end
end
