Rails.application.routes.draw do
  resources :tickets
  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
  get 'users', to: 'users#index'
  # get :airlines, to: 'airlines#index'
  get 'airlines/:id', to: 'airlines#show'
  resources :airlines, only: [:create, :show, :index]
end
