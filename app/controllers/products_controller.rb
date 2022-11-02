class ProductsController < ApplicationController
  def list_products
    products = Product.all
    render json: products.as_json
  end

  def list_product_one
    product = Product.find_by(id: 1)
    render json: product.as_json
  end

  def list_product_two
    product = Product.find_by(id: 2)
    render json: product.as_json
  end

  def list_product_three
    product = Product.find_by(id: 3)
    render json: product.as_json
  end
end
