Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants do
    resources :comments
  end

  resources :users
  resources :user_sessions, only: [ :new, :create, :destroy ]

  get 'signup' => 'users#new'
  get 'login'   => 'user_sessions#new'
  post 'login'  => 'user_sessions#create'
  get 'logout'  => 'user_sessions#destroy'
end
