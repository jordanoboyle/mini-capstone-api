class OrdersController < ApplicationController

  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: Product.find_by(id: 4).id,
      quantity: 2,
      subtotal: Product.find_by(id: 4).price,
      tax: Product.find_by(id: 4).tax,
      total: Product.find_by(id: 4).total 
    )
    @order.save

    render json: {order: Order.last}
  end

  def show
    @order = Order.find_by(id: 1)
    render template: "orders/show"
  end

  def index
    @orders = Order.all
    render template: "orders/index"
  end
end
