Rails.application.routes.draw do
  resources :concerts
  resources :groups
  root 'groups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'concerts#index'
end
