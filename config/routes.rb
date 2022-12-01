Rails.application.routes.draw do
  resources :shelters
  get 'list_pet/index'
  get 'list_pet/new'
  get 'list_pet/show'
  get 'list_pet/create'
  get 'list_pet/update'
  get 'list_pet/edit'
  get 'list_pet/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :pets, only: ['index', 'show']
end
