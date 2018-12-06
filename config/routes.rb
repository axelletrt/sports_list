Rails.application.routes.draw do

  #routes à sauvegarder   
  root to: "home#index"
  devise_for :professionals

  resources :cards
  resources :disciplines, only: [:show]
  #post '/cards/:id', to: 'evaluations#create'

end
