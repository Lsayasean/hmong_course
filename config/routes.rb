Rails.application.routes.draw do
  get 'facts/index'
  root  'posts#index'
  
  devise_for :users

  resources :posts
  resources :teams
  resources :users
  resources :facts

end
