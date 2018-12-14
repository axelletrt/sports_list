# frozen_string_literal: true

Rails.application.routes.draw do

  root 'home#index'

  resources :searches
  resources :evaluations
  resources :account, only: [:index]
  resources :my_activity, only: [:index]
  resources :cards
  resources :disciplines, only: [:show]
  post 'cards/:id', to: 'evaluations#create'
  post 'disciplines/:id', to: 'evaluations#show'
<<<<<<< HEAD

=======
  post 'home', to: 'evaluations#show'

  devise_for :users,
  controllers: { sessions: 'users/sessions',
                 registrations: 'users/registrations',
                 passwords: 'users/passwords' }
>>>>>>> ac33a98df647f4dcd5b43b1fdafbd52b6cae36b1
end
