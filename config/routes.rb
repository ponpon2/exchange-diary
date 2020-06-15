Rails.application.routes.draw do
  devise_for :users
  root  "toppages#index"
  resources :users, only: [:index,:edit,:new,:update]
  resources :mypages, only: :index do
    resources :diaries, only: :new
    resources :profiles, only: :new
  end
end
