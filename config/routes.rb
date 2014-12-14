Rails.application.routes.draw do
  root to: "database#show"
  resources :items
end
