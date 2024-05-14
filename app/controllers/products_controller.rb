class ProductsController < ApplicationController

  def all
    # test render
    product = Product.first
    render json: {
      message: "hello"
    }
  end

  def single
    # test render through jbuilder db
    @product = Product.last 
    render template:"products/show"
  end
end
