Rails.application.routes.draw do
  devise_for :users
  root "toppages#index"
  
end
