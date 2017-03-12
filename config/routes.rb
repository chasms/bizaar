Rails.application.routes.draw do
  root 'accounts#show'

  resources :bids
  resources :accounts do
  	resources :listings
  end
  # get '/accounts/:id/listings/:id/bids/', to: 'bids#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
