Rails.application.routes.draw do
  devise_for :users
  root to: "records#index"

  resources :artists , only: [:index] do
    resources :records
  end
end
