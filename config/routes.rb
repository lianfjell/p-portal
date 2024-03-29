Rails.application.routes.draw do
  resources :articles
  devise_for :users
  resources :users, :only => [:show, :index]
  root :to => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
