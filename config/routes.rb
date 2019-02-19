Rails.application.routes.draw do
	  api_version(:module => "V1", :header => {:name => "Accept", :value => "application/vnd.api_app_jwt_authentication; version=1"}) do

    end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :address, :restaurant
  post 'restaurant', to: 'restaurant#create'
  post 'restaurant/verify', to: 'restaurant#verify'
  post 'auth/register', to: 'users#register'
  post 'authenticate', to: 'authentication#authenticate'
  get 'render_current', to: 'users#r_current'
end