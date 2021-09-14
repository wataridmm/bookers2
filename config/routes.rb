Rails.application.routes.draw do
  get 'homes/edit'
  get 'homes/index'
  get 'homes/new'
  get 'homes/show'
  get 'homes/top'
  get 'homes/about'
  get 'users/show'
  get 'books/new'
  get 'books/create'
  get 'books/index'
  get 'books/show'
  get 'books/destroy'
  devise_for :users
  root to:'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
