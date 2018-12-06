Rails.application.routes.draw do

	#routes brouillons
  root to: "static#Index"
  get 'home/index'


  #routes à sauvegarder 
  devise_for :professionals
  resources :cards 
  resources :disciplines, only: [:index, :show]
  
end
