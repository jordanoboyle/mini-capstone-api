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
end
