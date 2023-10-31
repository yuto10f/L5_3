Rails.application.routes.draw do
  
  root 'tweets#index'
  
  resources :users
  resources :tweets
end
