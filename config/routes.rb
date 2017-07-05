Rails.application.routes.draw do
  devise_for :users
  root 'splashes#index'

  resources :users
end
