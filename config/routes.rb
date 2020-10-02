Rails.application.routes.draw do

  get 'sessions/new'
  resources :picture_tags
  resources :tags, only: [:index, :new, :create, :show]
  resources :comments, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit]
  resources :pictures, only: [:index, :new, :create, :show, :destroy]
  resources :sessions

  get '/signup', to: 'users#signup'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#logout'
  root 'sessions#login'
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
