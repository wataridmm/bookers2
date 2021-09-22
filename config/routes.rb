Rails.application.routes.draw do
  devise_for :users
  get 'homes/about'
  get 'users/show'
  get 'books/show'


  resources :homes
  resources :users
  resources :books




  root to:'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
