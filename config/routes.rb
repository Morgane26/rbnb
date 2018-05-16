Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :cocktails, only: [:index, :show, :new, :create] do
  resources :doses, only: [:new, :create, :destroy], shallow: true


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
