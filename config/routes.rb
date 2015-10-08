Rails.application.routes.draw do
  
  root to: "users#index"

  get 'sessions/new'

  post 'sessions/create'


  delete '/sessions', to: "sessions#destroy"

  resources :categories

  resources :performers

  resources :users

  get "/about", to: "users#about"

end
