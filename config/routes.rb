Rails.application.routes.draw do
  root 'welcome#index'

  resources :bids
  resources :accounts do
  	resources :listings
  end
  # get '/accounts/:id/listings/:id/bids/', to: 'bids#new'

<<<<<<< HEAD
  get '/login', to: 'sessions#new'
  get '/listings', to: 'listings#index'
=======
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
>>>>>>> dashboard-ben
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
