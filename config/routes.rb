PropertyManagement::Application.routes.draw do
  root 'buildings#index'
  resources :buildings, only: [:new, :create, :index]
  resources :owners, only: [:new, :create, :index]
end
