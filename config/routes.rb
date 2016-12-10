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
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
