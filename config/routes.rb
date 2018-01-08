Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get '/home', to: 'home#index'
  get '/halo/:id', to: 'home#halo'
  get '/about', to: 'home#about'

  resources :studios do
  	get :active, on: :collection
  	patch :toggle, on: :member
  end

  resources :tracks

  resources :listalats do
    get :active, on: :collection
    patch :toggle, on: :member
    patch :toggle2, on: :member
  end

  post '/validate', to: 'sessions#create'
  get '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'
  resources :sewas
  resources :sessions
  resources :users
  get '/dashboard', to: 'users#dashboard'
end