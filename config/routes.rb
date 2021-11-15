Rails.application.routes.draw do
<<<<<<< HEAD
    resources :cooks
    root 'cook#index'
    get 'get_cook/:id', to: 'cook#get_cook'
    
    resources :users
    get 'get_users/:id', to: 'user#get_user'
    get 'top/main'
    post 'top/login'
    get 'top/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  resources :users
  resources :cooks
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  resources :likes
  root 'cooks#index'
>>>>>>> X
end
