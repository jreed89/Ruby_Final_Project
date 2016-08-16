Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "patients#index"

  resources :patients
  resources :charts
  resources :doctors

 get '/sign_in', to: 'users#sign_in'
 post '/sign_in', to: 'users#sign_in!'
 get '/sign_up', to: 'users#sign_up'
 post '/sign_up', to: 'users#sign_up!'
 get '/sign_out', to: 'users#sign_out'
end
