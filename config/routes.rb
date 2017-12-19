Rails.application.routes.draw do
  resources :coupons
  resources :user_card_charge_settings
  resources :prices
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
      get :prices
      post :init_prices
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

  resources :couriers

  resources :price_rules

  resources :orders do 
  end

  resources :users do 
    resources :user_cards do 
      member do 
        get :charge
        post :charge
      end
    end
    resources :coupons
  end

  resources :coupon_lists do 
    resources :order_promotions, only: [:new, :create, :edit, :update, :destroy]
  end

end