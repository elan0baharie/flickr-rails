Rails.application.routes.draw do
  devise_for :users
  root 'splashes#index'

  resources :users do
    resources :photos
  end
  resources :tags

  resources :favorites
end
