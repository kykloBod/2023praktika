Rails.application.routes.draw do
  resources :products
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root "profiles#index"
  get "/profiles", to: "profiles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
