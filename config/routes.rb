Rails.application.routes.draw do
  root to: "database#show"

  namespace :api do
    namespace :database do
      resources :items, only: [:index, :create, :update, :destroy]
    end
  end

  namespace :storefront do
    resources :browse, only: [:index]
  end
end
