Rails.application.routes.draw do


  root to: "home#index"
 
   #routes à sauvegarder
  devise_for :professionals

  resources :cards
  resources :disciplines, only: [:show]
  #post '/cards/:id', to: 'evaluations#create'

end
