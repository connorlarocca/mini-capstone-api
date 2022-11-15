class CartedProductsController < ApplicationController
  def create
    cartpro = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id],
    )
    if cartpro.save
      render json: { message: "Product added to cart." }, status: :created
    else
      render json: { errors: cartpro.errors.full_messages }, status: :bad_request
    end
  end

  def index
    cartpros = CartedProduct.all
    render cartpros.as_json
  end
end
