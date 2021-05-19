Rails.application.routes.draw do
  get 'artists/index'
  devise_for :users
  resources :artists , only: [:index] do
  end
end
