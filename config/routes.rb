Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'alphablog#home'
  get 'about', to: 'alphablog#about'

  resources :articles
  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  # or
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
