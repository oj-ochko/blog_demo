Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: { 
    sessions: 'users/sessions', 
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'
  resources :posts
  get 'pages/about', to: 'pages#about'

  root "pages#home"
end
