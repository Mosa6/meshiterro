Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, onry: [:create, :destroy]
  end
  resources :users, onry: [:show, :edit, :update]
  get "/homes/about" => "homes#about", as: "about"
end