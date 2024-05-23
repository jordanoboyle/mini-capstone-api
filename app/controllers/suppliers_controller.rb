class SuppliersController < ApplicationController

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    if @supplier.save
      render template: "suppliers/show"
    else
      render json: {ERRORS: @supplier.errors.full_messages}
    end
  end

  def index
    render json: {message: "jim is dead"}
  end

  def show
    render json: {message: "jim is dead"}
  end

  def update
    render json: {message: "jim is dead"}
  end
  
  def destroy
    render json: {message: "jim is dead"}
  end
end




