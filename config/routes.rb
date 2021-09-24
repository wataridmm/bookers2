Rails.application.routes.draw do
  devise_for :users
  root to:'homes#top'
  get 'homes/about'

  get 'books/index'

  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as:'book'
  get 'users/:id/edit' =>  'users#edit', as: 'edit_user'
  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get 'users/index' => 'users#index'
  get 'users/:id/show' => 'users#show', as: 'show_user'

  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy'


  resources :homes
  resources :users
  resources :books
  resources :users, only: [:show]





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
