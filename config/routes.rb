Rails.application.routes.draw do

  root 'landing_page#index'

  get '/admin', to: 'admin#index'

  resources :incident_reports

  resources :users

  resources :law_firms

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
