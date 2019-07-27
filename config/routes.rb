Rails.application.routes.draw do
  get 'sessions/new'

  root   'static_pages#home'
  get 'users/new'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  
  get 'hello/index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users
  resources :microposts,          only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
