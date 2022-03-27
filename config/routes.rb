Rails.application.routes.draw do
    root "sessions#new"
    resources :posts do
      collection do 
        post :confirm
      end
    end
    resources :users, only: [:new, :create, :show, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
    resource :likes, only: [:create, :destroy, :show] 
    resource :contacts
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end