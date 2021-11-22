Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :cooks
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  resources :likes
  root 'cooks#index'
end
