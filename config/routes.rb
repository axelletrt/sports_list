Rails.application.routes.draw do
  
  #routes à sauvegarder
  root 'home#index'
  devise_for :professionals

  resources :cards, only: [:index, :show, :create, :new, :edit, :update]
  resources :disciplines, only: [:show]
  post '/cards/:id', to: 'evaluations#create'

end
