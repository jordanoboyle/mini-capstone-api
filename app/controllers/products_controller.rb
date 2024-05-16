class ProductsController < ApplicationController

  def create
    # don't forget the @ symbols for the variables (rails routes through that)
    @product = Product.new(
      name: params[:input_name],
      price: params[:input_price], 
      image_url: params[:input_image_url], 
      description: params[:input_description]
      )
    @product.save
    render template:"products/show"  
  end
  
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show  
    @product = Product.find_by(params[:id]) 
    render template:"products/show"
  end
  
  def update
    render json: {mess: "hello there"}
  end
  
  def destroy
    render json: {mess: "Hello there"}
  end
end
  

