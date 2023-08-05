Rails.application.routes.draw do
  root :to => 'onboarding#index'
  # get 'ships/index'
  get 'onboarding/index'
  get 'onboarding/create_player'
  get 'onboarding/choose_background'
  get 'onboarding/choose_ship'
  post 'players/choose_background'

  resources :players
  resources :ships
end
