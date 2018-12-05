Rails.application.routes.draw do

  resources :disciplines, only: [:show]
#  get 'sport/:id', to: 'disciplines#index'

  root to: "static#Index"
  get 'home/index'

  resources :cards, only: [:index, :show, :create, :new]
end
