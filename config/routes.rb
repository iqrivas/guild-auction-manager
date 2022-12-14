# == Route Map
#

Rails.application.routes.draw do
  resources :users
  resources :bids
  resources :categories
  devise_for :users, :path_prefix => 'my'
  resources :items
  resources :auction_items
  resources :members
  get 'auctions/', to:"auctions#index", as: "auctions"
  get 'auctions/new', to:"auctions#new", as: "new_auction"
  get 'auctions/:id', to:"auctions#show", as: "show_auction"
  get 'auctions/:id/edit', to:"auctions#edit", as: "edit_auction"

  post 'auctions/', to:"auctions#create"
  patch 'auctions/:id', to:"auctions#update", as: "auction"

  get 'greetings/hello'
  get 'greetings/hello-name', to='greetings#hello_name'
  post 'greetings/hello-name', to='greetings#hello_name'
  get 'greetings/goodbye'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "auctions/index"
  # Defines the root path route ("/")
  root "auctions#index"
end
