Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    :sessions => 'users/sessions'
  }
  root  "toppages#index"
  
  resources :mypages, only: :index do
    resources :diaries, only: :new
    resources :profiles, only: :new
  end
end
