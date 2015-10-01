Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'

  resources :albums, only: [:index, :show]

  namespace :admin do
    resources :albums
    resources :images
  end
end
