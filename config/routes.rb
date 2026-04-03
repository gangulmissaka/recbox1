Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :users
  #get 'about/index'
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  get '/about', to: "about#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
