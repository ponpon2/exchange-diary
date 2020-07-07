Rails.application.routes.draw do
  root  "toppages#index"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  resources :mypages, only: [:index, :show]
  resources :profiles
  resources :diaries, only: :new
  
end
