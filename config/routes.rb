Rails.application.routes.draw do
  # SPP
  get '/spp', to: 'spp#index', as: 'spp_index'
  resources :spp_payments
  resources :spp_invoices
  resources :spp_categories
  resources :spp_students
  resources :spp_batches

  # Campaign
  resources :categories
  resources :donations
  resources :campaigns do
    member do
      get :contribute
    end
  end
  resources :comments

  # System
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users
  resources :posts
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"
end