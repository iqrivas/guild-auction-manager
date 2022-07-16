Rails.application.routes.draw do
  get 'auctions/', to:"auctions#index"
  post 'auctions/', to:"auctions#create"
  get 'auctions/new'
  get 'auctions/edit'

  get 'greetings/hello'
  get 'greetings/hello-name', to='greetings#hello_name'
  post 'greetings/hello-name', to='greetings#hello_name'
  get 'greetings/goodbye'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "home/index"
  # Defines the root path route ("/")
  root "home#index"
end
