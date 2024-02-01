Rails.application.routes.draw do
  resources :users, only: [:create]
  post '/login', to: 'sessions#create'
  resources :reviews, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
