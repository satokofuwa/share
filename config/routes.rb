Rails.application.routes.draw do
    resources :posts
    resources :users, only: [:new, :create, :show, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
    resource :likes, only: [:create, :destroy]
    resource :confirm_posts_mailers
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end