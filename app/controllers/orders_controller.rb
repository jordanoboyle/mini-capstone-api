class OrdersController < ApplicationController

  def create
    @order = Order.new(
      user_id: 3,
      product_id: 9,
      quantity: 2,
      subtotal: 35.50,
      tax: 3.50,
      total: 38.50 
    )
    @order.save

    render json: {order: Order.last}
  end

  
end
