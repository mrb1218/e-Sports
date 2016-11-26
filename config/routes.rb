Rails.application.routes.draw do
  resources :users
  resources :matches
  resources :leagues
  resources :statistics
  resources :teams
  resources :players
  resources :seasons
  resources :favorites
 root 'pages#index'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
