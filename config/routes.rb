Rails.application.routes.draw do
  devise_for :users
  resources :matches
  resources :leagues
  resources :statistics
  resources :teams
  resources :players
  resources :seasons
  resources :favorites

  #Home page is at pages/index.html(.erb)
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
