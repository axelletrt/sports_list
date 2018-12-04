Rails.application.routes.draw do

  get 'home/index'
  devise_for :professionals
  root to: "static#Index"
  resources :cards, only: [:index, :create, :new]

end
