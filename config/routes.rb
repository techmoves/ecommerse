Rails.application.routes.draw do
  namespace :admin do
    resources :categories
  end
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "/admin", to: "admin#index"

  authenticated :admin do
    root to: "admin#index", as: :admin_root
  end
end
