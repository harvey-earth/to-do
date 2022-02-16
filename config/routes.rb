Rails.application.routes.draw do
  resources :goals do
    resources :steps
  end
  devise_for :users
  root to: "home#index"
end
