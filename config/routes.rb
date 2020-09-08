Rails.application.routes.draw do
  devise_for :users
  
  root "toppages#index"

  resources :mypages, only: [:index] do
    collection do
      delete 'logout' 
    end
  end

  namespace :mypages do
    get 'diaries/myself', to: 'diaries#index'
  end

  resources :diaries

end
