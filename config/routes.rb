Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products_path", controller: "products", action: "list_products"

  get "one_product/:id", controller: "products", action: "one_product"

  # get "/product_1_path", controller: "products", action: "list_product_one"

  # get "/product_2_path", controller: "products", action: "list_product_two"

  # get "/product_3_path", controller: "products", action: "list_product_three"
end
