Rails.application.routes.draw do
  #routes à sauvegarder
  root 'home#index'

  devise_for :professionals, path: 'professionals', controllers: {sessions: 'professionals/sessions', registrations: 'professionals/registrations' }
  devise_for :users, path: 'users', controllers: {sessions: 'users/sessions', registrations: 'users/registrations' }


  resources :cards
  resources :disciplines, only: [:show]
  post '/cards/:id', to: 'evaluations#create'

end
