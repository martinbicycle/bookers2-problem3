Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resources :book_comments, only: [:create, :destroy]
  end
  # resource :favorites, only: [:create, :destroy]

  root to: 'homes#top'
  get 'home/about' => 'homes#about'
end