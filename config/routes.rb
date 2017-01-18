Rails.application.routes.draw do

  root 'landing_page#index'

  get '/admin', to: 'admins#index'

  get '/login', to: 'sessions#new'

  post '/logout', to: 'sessions#destroy'

  resources :incident_reports

  resources :users

  resources :law_firms

  resources :sessions, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
