Rails.application.routes.draw do
  root :to => 'onboarding#index'
  get 'ships/index'
  get 'onboarding/index'
  get 'onboarding/create_player'
  get 'onboarding/choose_ship'

  resources :players
  resources :ships
end
