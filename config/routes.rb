Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :agencies
  resources :agents do
    member do
      put :update_seller_favorite
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
