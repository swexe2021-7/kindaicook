Rails.application.routes.draw do
  get 'mains/index'
  resources :users
  resources :cooks
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  resources :likes
  root 'cooks#index'
end
