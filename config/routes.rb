Rails.application.routes.draw do

  devise_for :professionals

  root to: "static#Index"

end
