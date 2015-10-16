Rails.application.routes.draw do

  root to: "users#index"

  get 'sessions/new'

  post 'sessions/create'

  delete '/sessions', to: "sessions#destroy"

  # TODO: research how to use only certain CRUD functions in this resource - JC
  resources :categories

  resources :performers

  resources :users

end
