Rails.application.routes.draw do

  get 'home/index'
  devise_for :professionals
  root to: "static#Index"

end
