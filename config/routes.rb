Rails.application.routes.draw do
    root "users/new"
    resources :uers,only:[:new,:create,:show]
end
