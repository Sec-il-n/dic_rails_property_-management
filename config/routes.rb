Rails.application.routes.draw do
  root to: 'properties#new'
  resources :properties
end
