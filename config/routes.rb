Rails.application.routes.draw do

  get 'sessions/new'
  resources :picture_tags
  resources :tags, only: [:index, :create, :show]
  resources :comments, only: [:create, :destroy]
  resources :users, only: [:show, :create]
  resources :pictures, only: [:index, :show, :update, :create, :destroy]
  resources :sessions, only: [:create]

  get '/signup', to: 'users#signup'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#logout'
  root 'sessions#login'
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
