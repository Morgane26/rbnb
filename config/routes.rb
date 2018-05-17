Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # get '/meals', to: 'meals#index'
  # get '/meals/:id', to: 'meals#show'
  # get '/meals/:new', to: 'meals#new'
  # get "index", to: "meals#index"
  # get "meals/:id", to: "meals#show"
  # get "meals/new", to: "meals#new"
  # post "meals", to: "meals#create"

  resources :meals, only: [:index, :new, :show] do
    resources :orders, only: [:index, :create, :show], shallow: true
  end

end
