Rails.application.routes.draw do
  root  "toppages#index"
  devise_for :users
  resources :users 
  resources :mypages, only: [:index, :show]
  resources :profiles
  resources :diaries, only: :new
  
end
