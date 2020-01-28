Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'alphablog#home'
  get 'about', to: 'alphablog#about'

  resources :articles
end
