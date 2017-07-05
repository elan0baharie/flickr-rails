Rails.application.routes.draw do
  devise_for :users
  root 'splashes#index'

  resources :users do
    resources :photos do
      resources :tags
    end
  end
  
end
