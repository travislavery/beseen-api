Rails.application.routes.draw do
  resources :colors
  resources :sub_categories
  resources :categories
  resources :prices
  resources :brands
  resources :styles
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
