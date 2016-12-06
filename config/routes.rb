Rails.application.routes.draw do
  devise_for :users

  resources :matches
  resources :leagues
  resources :statistics
  resources :teams
  resources :players
  resources :seasons
  resources :favorites
 root 'pages#index'

  get 'users/new'

  get "mailbox/inbox" => "mailbox#inbox", as: :mailboxer_inbox

  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent

  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
