Rails.application.routes.draw do
  resources :donations
  resources :campaigns
  resources :comments
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users
  resources :posts
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"
end