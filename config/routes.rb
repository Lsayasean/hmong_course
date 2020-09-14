Rails.application.routes.draw do
  get 'teams/index'
  root  'posts#index'
  devise_for :users
  resources :posts
  resources :teams

end
