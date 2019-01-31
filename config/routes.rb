Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'auth/register', to: 'users#register'
  post 'authenticate', to: 'authentication#authenticate'
  get 'render_current', to: 'users#r_current'
end