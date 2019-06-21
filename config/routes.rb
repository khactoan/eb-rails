Rails.application.routes.draw do
  resources :messages
  resources :chatworks
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
