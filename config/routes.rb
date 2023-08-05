Rails.application.routes.draw do
  root :to => 'players#new'
  get 'ships/index'
  get 'onboarding/index'

  resources :players
  resources :ships

end
