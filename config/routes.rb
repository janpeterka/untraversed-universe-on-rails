Rails.application.routes.draw do
  get 'players/new'
  get 'players/create'
  get 'players/show'
  root :to => 'players#new'

  resources :players
end
