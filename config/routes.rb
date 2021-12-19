Rails.application.routes.draw do

  resources :users
  resources :cooks
  get 'get_image/:id', to: 'cooks#get_image'
  get 'tops/main'
  post 'tops/login'
  get 'tops/logout'
  resources :likes
  root 'cooks#index'

end
