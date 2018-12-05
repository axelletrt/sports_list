Rails.application.routes.draw do

	#routes brouillons
  root to: "static#Index"
  get 'home/index'


  #routes à sauvegarder 
  devise_for :professionals
  resources :cards, only: [:index, :create, :new, :edit, :update]
  resources :disciplines, only: [:index, :show]
  
end
