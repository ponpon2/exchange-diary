Rails.application.routes.draw do
  root  "toppages#index"
  devise_for :users
  resources :users
  
  resources :mypages, only: :index
  resources :diaries, only: :new
  resources :profiles, only: :new
end
