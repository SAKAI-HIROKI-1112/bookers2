Rails.application.routes.draw do
  devise_for :users
    resources :books
    resources :users, only:[:show,:edit,:update]
  root to: 'home#top'
  get 'users' => 'users#index'
  get 'home/about'
  delete '/books' => 'books#destroy'
end