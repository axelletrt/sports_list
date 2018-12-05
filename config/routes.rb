Rails.application.routes.draw do
  get 'evaluations/create'
  get 'home/index'
  root to: "static#Index"

  devise_for :professionals
  resources :cards, only: [:index, :show, :create, :new]
  resources :disciplines, only: [:show]

  post '/cards/:id', to: 'evaluations#create'
end
