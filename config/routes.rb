Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  #Products Controller Routes
  post "/products", controller: "products", action: "create"
  get "/products", controller: "products", action: "index"
  get "/products/:id", controller: "products", action: "show"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "destroy"
  
  #Suppliers Controller Routes
  post "/suppliers", controller: "suppliers", action: "create"
  get "/suppliers", controller: "suppliers", action: "index"
  get "/suppliers/:id", controller: "suppliers", action: "show"
  patch "/suppliers/:id", controller: "suppliers", action: "update"
  delete "/suppliers/:id", controller: "suppliers", action: "destroy"
  
  # Images Controller Routes
  post "/images", controller: "images", action: "create"
  get "/images", controller: "images", action: "index"
  get "/images/:id", controller: "images", action: "show"
  patch "/images/:id", controller: "images", action: "update"
  delete "/images/:id", controller: "images", action: "destroy"

  # Users Controller Routes
  post "/users", controller: "users", action: "create"



  # Defines the root path route ("/")
  # root "posts#index"
end
