Rails.application.routes.draw do


  devise_for :professionals
  
  resources :cards
  
  resources :disciplines, only: [:index, :show]

  root to: "static#Index"



end
