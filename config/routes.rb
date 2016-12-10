Rails.application.routes.draw do
  resources :searches
  get 'search/index'

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
  get 'team_stats', to: 'statistics#team'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
