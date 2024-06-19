class CartedProductsController < ApplicationController
  before_action :authenticate_user


  def create
    @carted_product = CartedProduct.new()

    @carted_product.user_id = current_user.id
    @carted_product.product_id = params[:product_id]
    @carted_product.quantity = params[:quantity]
    @carted_product.order_id = nil
    @carted_product.status = "carted"

    if @carted_product.save
      render json: {message: "confirm product added to cart"}
    else
      render json: {errors: carted_product.errors.fullmessages}
    end
  end

  
end
