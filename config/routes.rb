Rails.application.routes.draw do
  resources :presentations
  resources :groups
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  root 'static_pages#home'
end
