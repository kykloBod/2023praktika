Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root "profiles#index"
  get "/profiles", to: "profiles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
