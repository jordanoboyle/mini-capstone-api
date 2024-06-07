class OrdersController < ApplicationController

  def create
    pp current_user
    product = Product.find_by(id: params[:product_id])
    q = params[:quantity].to_i  # this is important...params come in as a string
    p product.price
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: q,
      subtotal: (product.price) * q,
      tax: (product.tax) * q,
      total: (product.total) * q   
      ) 
    
    @order.save

    render template: "orders/show"
  end

  def show
    @order = Order.find_by(user_id: current_user.id)
    render template: "orders/show"
  end

  def index
    @orders = Order.where(user_id: current_user.id)
    render template: "orders/index"
  end
end
