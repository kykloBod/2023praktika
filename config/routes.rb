Rails.application.routes.draw do
  get 'user/controller'
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

  Rails.application.routes.draw do
  get 'user/controller'
    
    post '/users/:id/update_role', to: 'users#update_role', as: 'update_role'
    
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
