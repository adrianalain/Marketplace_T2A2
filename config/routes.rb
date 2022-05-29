Rails.application.routes.draw do
  # resources :products
  get 'products', to: 'products#index' 
  get 'products/new', to: 'products#new' 
  get 'products/:id', to: 'products#show', as: 'product'
  get 'products/:id/edit', to: 'products#edit', as: 'edit_product'
  post 'products', to: 'products#create'
  patch 'products/:id', to: 'products#update'
  delete 'products/:id', to: 'products#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'products#index'
end
