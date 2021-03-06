Rails.application.routes.draw do
  resources :tags
  resources :goals do
    resources :todos do
      member do
        get "sort"
      end 
    end 
  end 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
