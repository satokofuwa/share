Rails.application.routes.draw do
    root "sessions#new"
    resources :sessions, only: [:new, :create, :destroy]
    resources :users, only: [:new, :create, :show, :edit, :update]
    resource :likes, only: [:create, :destroy]
    resources :posts
end