class ProductsController < ApplicationController

  def index
    # test render
    @products = Product.all
    render template: "products/index"
  end

  def show
    # Can also be written with syntax: @product = Product.find_by(params[:id])
    the_id = params[:id]
    p the_id
    @product = Product.find_by(id: the_id) 
    render template:"products/show"
  end

  def create
    # don't forget the @ symbols for the variables (rails routes through that)
    p "Trying to make dynamic"
    @product = Product.new(
      name: params[:input_name],
      price: params[:input_price], 
      image_url: params[:input_image_url], 
      description: params[:input_description]
      )
    @product.save
    render template:"products/show"  
  end

  def update
    render json: {
      message: "Hello there"
    }
  end

  def destroy
    render json: {
      message: "Hello there"
    }
  end
end
