Rails.application.routes.draw do
  resources :bids
  resources :accounts do
  	resources :listings
  end
  # get '/accounts/:id/listings/:id/bids/', to: 'bids#new'

  get '/login', to: 'sessions#new'
  get '/listings', to: 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
