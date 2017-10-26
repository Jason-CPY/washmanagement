Rails.application.routes.draw do

  resources :products
  resources :categories
  resources :workers_roles
  devise_for :workers
  
  resources :workers do 
    member do 
      get :reset_password
    end
  end
  resources :roles

  resources :categories do
    resources :products
  end

  post '/categories/:id', :to => 'categories#recover'
  # post '/categories/:categories_id', :to => 'products#destroy'
  post '/products/:id', :to => 'products#recover'
  post '/products/:id', :to => 'products#destroy'


end