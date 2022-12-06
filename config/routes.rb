Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :pets, only: ['index', 'show', 'new', 'edit', 'upgrade'] do
    resources :list_pets, only: ['index', 'create']
  end
  resources :shelters, only: ['show']
  resources :dashboards, only: ['show']
end
