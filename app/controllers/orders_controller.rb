class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

    subtotal = 0
    carted_products.each do |cp|
      cp.status  = "purchased"
      subtotal  += cp.product.price
    end
    tax   = subtotal * 0.10
    total = subtotal + tax
    p tax  # 2
    p total # 20
    @order          = Order.new()
    @order.user_id  = current_user.id
    @order.subtotal = subtotal
    @order.tax      = tax
    @order.total    = total
    
    if @order.save
      render template: "orders/show"
    else
      render json: {Errors: order.errors.fullmessages}
    end
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
