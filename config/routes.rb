Rails.application.routes.draw do
  root to: 'properties#new'
  resources :properties
  resources :stations, only:[:new, :create, :edit, :update]
end
