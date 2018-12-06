Rails.application.routes.draw do
  #routes à sauvegarder
  root 'home#index'

  devise_for :professionals
  devise_for :users

  resources :cards
  resources :disciplines, only: [:show]
  post 'cards/:id', to: 'evaluations#create'

end
