Rails.application.routes.draw do
  get 'likes/create'

  get 'likes/destroy'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :microposts,only: [:index, :show, :create, :destroy, :edit] do
  resources :comments, only: [:create]
end
  
  resources :relationships,       only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :notifications, only: :index
  get 'sessions/new'

  root   'static_pages#home'
  get 'users/new'

  
  #resources :users
  
  get 'hello/index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  end
