Rails.application.routes.draw do
  root to: "database#show"

  namespace :api do
    namespace :database do
      resources :items, only: [:index, :create, :update, :destroy]
    end

    namespace :storefront do
      resources :items, only: [:index]
    end
  end
end
