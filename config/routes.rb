Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
>>>>>>> 11/22
  resources :users
  resources :cooks
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  resources :likes
  root 'cooks#index'
end
