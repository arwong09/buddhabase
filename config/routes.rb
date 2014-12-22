Rails.application.routes.draw do
  root to: "inventory/items#index"

  namespace :api do
    namespace :inventory do
      resources :items, only: [:index, :create, :update, :destroy]
    end

    namespace :storefront do
      resources :items, only: [:index]
    end
  end

  namespace :inventory do
    resources :items, only: [:index]
  end

  namespace :storefront do
    resources :browse, only: [:index]
  end
end
