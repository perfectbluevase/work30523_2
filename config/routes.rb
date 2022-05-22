Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :create, :edit, :update, :show, :index, :delete]
  resources :users, only: [:edit, :update, :show, :index]

end
