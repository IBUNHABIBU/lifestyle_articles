Rails.application.routes.draw do
   root 'articles#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  resources :users
  resources :categories
  resources :articles
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
