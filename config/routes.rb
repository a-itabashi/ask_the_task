Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'  
  resources :tasks 
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :show, :destroy]
end

