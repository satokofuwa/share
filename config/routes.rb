Rails.application.routes.draw do
    root "sessions#new"
    resources :sessions, only: [:new, :create, :destroy]
    resources :users, only: [:new, :create, :show]
    get 'sessions/new',  to:'users#show'
end
