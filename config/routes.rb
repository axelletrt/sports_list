Rails.application.routes.draw do

  devise_for :users,
             controllers: { sessions: 'users/sessions',
                            registrations: 'users/registrations',
                            passwords: 'users/passwords',
                            
  }


  #routes à sauvegarder
  root 'home#index'
  resources :account, only: [:index]
  resources :my_activity, only: [:index]
  resources :cards
  resources :disciplines, only: [:show]
  post 'cards/:id', to: 'evaluations#create'

end
