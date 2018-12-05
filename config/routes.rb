Rails.application.routes.draw do


  get 'home/index'
  devise_for :professionals
  
  resources :cards, only: [:index, :create, :new, :edit, :update]

  resources :disciplines, only: [:index, :show]
  get 'disciplines/categorie/:id', to: 'disciplines#categorie'

  root to: "static#Index"



end
