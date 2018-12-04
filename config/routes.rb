Rails.application.routes.draw do

  resources :disciplines, only: [:index, :show]
  get 'disciplines/categorie/:id', to: 'disciplines#categorie'

  root to: "static#Index"
  get 'home/index'

  resources :cards, only: [:index, :create, :new]
end
