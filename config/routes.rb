Rails.application.routes.draw do
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  # authenticate :admin_user do
  #   root to: "admin/dashboard#index", as: :admin_root
  # end
  authenticated :admin do
    root to: "admin/#index", as: :admin_root
  end
end
