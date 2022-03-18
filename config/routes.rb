Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/books" => "books#index"
  post "/books" => "books#create"
  get "/books/:id" => "books#show" 
  patch "/books/:id" => "books#update"
  delete "/books/:id" => "books#destroy"
end
