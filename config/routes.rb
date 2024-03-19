Rails.application.routes.draw do
  resources :spp_categories
  resources :spp_students
  resources :spp_batches
  resources :categories
  resources :donations
  resources :campaigns do
    member do
      get :contribute
    end
  end
  resources :comments
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users
  resources :posts
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"
end