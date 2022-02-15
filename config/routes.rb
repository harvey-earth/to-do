Rails.application.routes.draw do
  resources :steps
  resources :goals
  devise_for :users
  root to: "home#index"
end
