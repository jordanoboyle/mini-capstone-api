class CartedProductsController < ApplicationController
  before_action :authenticate_user, only: [:create, :destroy, :update]


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
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render template: "carted_products/index"
  end

  def update ###THIS NEEDS TO BE FINISHED (BOTH QUANTITY OR STATUS CAN BE CHANGED)
    # need to access the carted product
    # then need to adjust the quantity 
    #conditional the quantity change to remove it from the cart entirely.
    # if cp.quantity cp.destroy or something similar
    @carted_product = CartedProduct.find_by(id: params[:id])
    status = params[:status] || @carted_product.status
    quantity = params[:quantity] || @carted_product.quantity
    if status != "removed" && quantity.to_i > 0
      @carted_product.quantity = quantity.to_i
      if @carted_product.save
        render json: {message: "Quantity updated."}
      else
        render json: {Errors: @carted_product.errors.full_messages}
      end
    elsif status == "removed" || quantity.to_i == 0
      @carted_product.status = "removed"
      if @carted_product.save
        render json: {message: "Item removed from cart"}
      else
        render json: {Errors: @carted_product.errors.full_messages}
      end
    end
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    
    if @carted_product.destroy
      render json: {message: "#{@carted_product.product.name} has been removed from cart."}
    else
      render json: {errors: @carted_product.errors.full_messages}
    end
  end

  
end
