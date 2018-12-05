Rails.application.routes.draw do
  get 'home/index'
  root to: "static#Index"

  devise_for :professionals
  resources :cards, only: [:index, :show, :create, :new]
  resources :disciplines, only: [:show]
end
