Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  get '/dashboard', to: 'dashboard#index'

  resources :collection do
    resources :card
  end
end
