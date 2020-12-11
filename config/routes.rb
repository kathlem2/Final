Rails.application.routes.draw do
  resources :rates
  root 'static_pages#home'
end
