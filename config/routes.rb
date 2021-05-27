Rails.application.routes.draw do

  devise_for :users
  root to: "records#index"
  resources :users, only: [:edit, :update]
  resources :artists , only: [:index, :new, :create, :destroy] do
    resources :records

  end
end
