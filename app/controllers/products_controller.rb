class ProductsController < ApplicationController

  def create
    # don't forget the @ symbols for the variables (rails routes through that)
    @product = Product.new(
      name:        params[:input_name],
      price:       params[:input_price], 
      image_url:   params[:input_image_url], 
      description: params[:input_description],
      inventory: params[:input_inventory],
      )
    @product.save
    
    render  template:"products/show"  
  end
  
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.first
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end
  
  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price 
    @product.image_url = params[:image_url] || @product.image_url    
    @product.description = params[:description] || @product.description
    @product.inventory = params[:inventory] || @product.inventory
    @product.save
    render template: "products/show"
  end
  
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render template: "products/show"
  end
end
  

