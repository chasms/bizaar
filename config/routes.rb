Rails.application.routes.draw do
  root 'welcome#index'

  resources :bids
  resources :accounts do
  	resources :listings, only: [:create, :new, :edit, :show, :update, :destroy]
  end
  # get '/accounts/:id/listings/:id/bids/', to: 'bids#new'


  get '/login', to: 'sessions#new'
  get '/listings', to: 'listings#index'

  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
