Rails.application.routes.draw do
  devise_for :workers
  
  resources :workers do 
    member do 
      get :reset_password
      put :change_current_city
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

  resources :stations do
  end

  resources :addresses do 
    collection do 
      get :suggestion
    end
  end

  resources :cities
end