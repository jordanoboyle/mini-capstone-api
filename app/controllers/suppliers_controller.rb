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
    @suppliers = Supplier.all
    render template: "suppliers/index"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render template: "suppliers/show"
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number

    if @supplier.save
      render template: "suppliers/show"
    else
      render json: {ERRORS: @supplier.errors.full_messages}
    end

  end
  
  def destroy
    render json: {message: "jim is dead"}
  end
end




