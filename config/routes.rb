Rails.application.routes.draw do
  devise_for :users
  root to:'homes#top'
  get 'homes/about'
 
  get 'books/index'
  get 'books/show'
  post 'books' => 'books#create'
  get 'users/:id/edit' =>  'users#edit', as: 'edit_user'
  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'


  resources :homes
  resources :users
  resources :books





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
