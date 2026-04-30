Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'about#index'
  get 'search', to: 'search#index'
  # get 'search/index'

  # Session routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # User landing pages
  get '/admin', to: 'home#aindex'
  get '/userhome', to: 'home#uindex'
  get '/your-recipes', to: 'home#urecipes'

  # User resources
  resources :users
  resources :recipes
  resources :ingredient
end