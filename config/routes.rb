Rails.application.routes.draw do

  root 'landing_page#index'

  get '/admin', to: 'admins#index'

  get '/users/login', to: 'users#login'

  resources :incident_reports

  resources :users

  resources :law_firms

  resources :login

  get '/resources', to: 'resources#resources'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
