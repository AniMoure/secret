Rails.application.routes.draw do
  root 'static_pages#home'
  get    '/signup', to: 'users#new'
  post   '/signup', to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  delete '/logout',  to: 'sessions#destroy'
  get    '/univers', to: 'static_pages#univers'
  get    '/profile', to: 'users#show'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
