Rails.application.routes.draw do
  root to: "pages#home"
  get 'pages/about', to: "pages#about"
  get 'pages/contact', to: "pages#contact"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pages, only: [:create, :show]
  resources :packages, only: [:index, :show] do
    resources :payments, only: [:new, :create]
  end

  resources :treatments do
    resources :face_treatments, only: [:new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
