Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :signup do
    collection do
      get 'index'
    end
  end
  devise_scope :user do
    get 'sending_destinations', to: 'users/registrations#new_sending_destination'
    post 'sending_destinations', to: 'users/registrations#create_sending_destination'
  end

  root  "toppages#index"
  
  resources :mypages, only: :index do
    resources :diaries, only: :new
    resources :profiles, only: :new
  end
end
