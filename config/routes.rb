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
    member do 
      get :recover
    end
    resources :products do
      member do 
      get :recover
    end
    end
  end


end