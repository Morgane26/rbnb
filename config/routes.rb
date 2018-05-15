Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'


  resources :meals
  # get '/meals', to: 'meals#index'
  # get '/meals/:id', to: 'meals#show'
  # get '/meals/:new', to: 'meals#new'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
