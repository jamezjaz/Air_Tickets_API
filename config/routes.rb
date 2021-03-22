Rails.application.routes.draw do
  #add the register route
  post 'auth/register', to: 'users#register'
end
