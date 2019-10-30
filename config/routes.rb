Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    member do
      get :followings
      get :followers
      
      get :password
      put :uppass
      patch :uppass
      
      get :nicings
      get :nicers
    end
  end

  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :nices, only: [:create, :destroy]
end