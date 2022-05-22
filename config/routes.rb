Rails.application.routes.draw do
  resources :books
  root to: "homes#top"
  devise_for :users

  
end
