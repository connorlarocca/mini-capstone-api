class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end

  def create
    product = Product.new(name: "Single Shoe", price: 29.99, image_url: "placeholder", description: "This luxurious single shoe, available in Left and Right foot orientation, can be yours. Purchasing 2 times is recommended.")
    product.save
    render json: product.as_json
  end
end
