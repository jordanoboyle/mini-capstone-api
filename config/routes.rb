Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  #Products Controller Routes
  post "/products", controller: "products", action: "create" #only admins
  get "/products", controller: "products", action: "index" #everyone
  get "/products/:id", controller: "products", action: "show" #everyone
  patch "/products/:id", controller: "products", action: "update" #only admins
  delete "/products/:id", controller: "products", action: "destroy"  #only admins
  
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

  # Users Controller Routes (sign up)
  post "/users", controller: "users", action: "create"

  # Sessions Controller Routes (login)
  post "/sessions", controller: "sessions", action: "create"

  #Orders Controller Routes
  post "/orders",    controller: "orders",   action: "create"
  get "/orders/:id", controller: "orders",   action: "show"
  get "/orders",     controller: "orders",   action:  "index"   


  # Defines the root path route ("/")
  # root "posts#index"
end
