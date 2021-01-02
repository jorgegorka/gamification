Rails.application.routes.draw do
  resources :dashboard, only: [:index]
  resources :events
  resources :rules do
    resources :conditions
  end
  resources :rewards
  resources :activities, only: [:index]
  resources :achievements, only: [:index]

  post '/graphql', to: 'graphql#execute'

  root to: 'dashboard#index'
end
