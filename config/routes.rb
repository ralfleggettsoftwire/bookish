Rails.application.routes.draw do
  resources :authors
  resources :books do
    resources :copies, only: [:index, :edit, :create, :update, :destroy, :new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
end
