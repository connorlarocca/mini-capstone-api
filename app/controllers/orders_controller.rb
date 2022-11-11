class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = product.price * params[:quantity].to_i

    calculated_tax = calculated_subtotal * 0.09

    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if order.save #happy path
      render json: order.as_json
    else #sad path
      render json: { errors: order.errors.full_messages }, status: 418
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render json: @order.as_json
  end

  def index
    order = Order.all
    render json: order.as_json
  end
end