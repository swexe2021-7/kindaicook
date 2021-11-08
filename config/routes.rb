Rails.application.routes.draw do
 resources :cook
    root 'cook#index'
    get 'get_cook/:id', to: 'cook#get_tweet'
    
    resources :users
    get 'get_users/:id', to: 'user#get_user'
    get 'top/main'
    post 'top/login'
    get 'top/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
