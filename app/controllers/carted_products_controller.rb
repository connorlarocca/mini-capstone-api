class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    cartpro = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id],
    )
    cartpro.save
    if cartpro.save
      render json: { message: "Product added to cart." }, status: :created
    else
      render json: { errors: cartpro.errors.full_messages }, status: :bad_request
    end
  end

  # def update
  #   product = CartedProduct.find_by(id: params[:id])
  #   product. = params[:name] || product.name
  #   product.price = params[:price] || product.price
  #   product.description = params[:description] || product.description
  #   product.save
  #   render json: product.as_json
  # end

  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products.as_json
  end

  def destroy
    cartpro = CartedProduct.find_by(id: params[:id])
    cartpro.status = "removed"
    cartpro.save
    render json: { message: "Product removed from cart." }
  end

  # def index
  #   #pp current_user
  #   @products = Product.all
  #   if params[:category]
  #     category = Category.find_by(name: params[:category])
  #     @products = category.products
  #   end
  #   render :index
  # end
end
