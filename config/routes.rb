PropertyManagement::Application.routes.draw do
  root 'home#index'
  resources :buildings, only: [:new, :create, :index]
end
