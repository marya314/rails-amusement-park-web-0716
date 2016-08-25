Rails.application.routes.draw do
    resources :users, :attractions, :rides
    root to: "application#home"

    get '/login', to: 'sessions#new', as: 'login'
    get '/signin', to: 'sessions#new', as: 'signin'
    post 'sessions', to: 'sessions#create', as: 'sessions'
    delete 'logout', to: 'sessions#destroy', as: 'logout'
end
