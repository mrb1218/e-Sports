Rails.application.routes.draw do
  #Home page is at pages/index.html(.erb)
  root 'pages#index'

  #Devise uses users
  devise_for :users

  #List resources
  resources :matches
  resources :leagues
  resources :statistics
  resources :teams
  resources :players
  resources :seasons
  resources :favorites

  #Redirections
  get 'schedule', to: 'matches#schedule'
  get 'results', to: 'matches#results'
  get 'about', to: 'pages#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
