Rails.application.routes.draw do
  resources :purchases
  resources :line_items
  resources :carts
  devise_for :accounts
  resources :categories
  resources :homes
  
  resources :products do
    collection do
      get :store
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#store'
  
end
