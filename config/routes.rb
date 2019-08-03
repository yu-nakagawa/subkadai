Rails.application.routes.draw do
  
  resources :microposts,only: [:index, :show, :create, :destroy, :edit] do
  resources :comments, only: [:create]
end
  get 'sessions/new'

  root   'static_pages#home'
  get 'users/new'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  
  get 'hello/index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  end
