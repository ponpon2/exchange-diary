Rails.application.routes.draw do
  devise_for :users
  
  root "toppages#index"

  resource :mypages, only: [:show] do
    resources :diaries, except: [:index]
  end

end
