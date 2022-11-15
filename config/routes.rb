Rails.application.routes.draw do
  ### PRODUCTS
  get "/products", controller: "products", action: "index"

  get "/products/:id", controller: "products", action: "show"

  post "/products", controller: "products", action: "create"

  patch "/products/:id", controller: "products", action: "update"

  delete "/products/:id", controller: "products", action: "destroy"

  ### USERS

  post "/users", controller: "users", action: "create"

  get "/users", controller: "users", action: "index"

  ### SESSIONS

  post "/sessions", controller: "sessions", action: "create"

  ### ORDERS

  post "/orders", controller: "orders", action: "create"

  get "/orders/:id", controller: "orders", action: "show"

  get "/orders", controller: "orders", action: "index"

  ### CARTED PRODUCTS

  get "/cart", controller: "carted_products", action: "index"

  post "/cart", controller: "carted_products", action: "create"
end
