class CartedProductsController < ApplicationController
  before_action :authenticate_user, only: [:create]


  def create
    @carted_product = CartedProduct.new()
    @carted_product.user_id = current_user.id
    @carted_product.product_id = params[:product_id]
    @carted_product.quantity = params[:quantity]
    @carted_product.status = "carted"
    @carted_product.order_id = nil

    if @carted_product.save
      render template: "carted_products/show"
    else
      render json: {error: carted_product.errors.fullmessages}
    end
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id)
    render template: "carted_products/index"
  end

  
end
