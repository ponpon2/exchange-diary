Rails.application.routes.draw do
  root  "toppages#index"
  devise_for :users
  resources :users do
    resources :mypages, only: :show
  end
  resources :profiles
  resources :diaries, only: :new
  
end
