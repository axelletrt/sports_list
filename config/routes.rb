Rails.application.routes.draw do
  
  root to: "static#Index"

   resources :cards, only: [:index, :create, :new]

end
