Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants do
    resources :comments
  end

  resources :users
  resources :user_sessions, only: [ :new, :create, :destroy ]

  get '/signup' => 'users#new'
  get '/signin' => 'user_sessions#new'
  get '/signout' => 'user_sessions#destroy'
end
