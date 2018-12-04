Rails.application.routes.draw do

  get 'disciplines/index'
  get 'disciplines/show/:id', to: "disciplines#show"
  get 'disciplines/yoga'
  get 'disciplines/surf'
  get 'disciplines/scuba_diving'
  devise_for :professionals

  root to: "static#Index"
  get 'home/index'

   resources :cards, only: [:index, :create, :new]

end
