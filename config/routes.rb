Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :plant_guides
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/shop'
  root 'simple_pages#index'
  post 'simple_pages/thank_you'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
