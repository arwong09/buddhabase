Rails.application.routes.draw do
  root to: "database#show"

  namespace :api do
    resources :items, only: [:index, :create, :update, :destroy]
  end
end
