Rails.application.routes.draw do

  devise_for :users
	#routes brouillons
  root 'home#index'

  #routes à sauvegarder
  devise_for :professionals

  resources :cards, only: [:index, :show, :create, :new, :edit, :update]
  resources :disciplines, only: [:show]
  post '/cards/:id', to: 'evaluations#create'

end
