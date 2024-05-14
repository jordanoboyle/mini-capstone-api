class ProductsController < ApplicationController

  def all
    # test render
    @products = Product.all
    render template: "products/index"
  end

  def single
    # test render through jbuilder db
    @product = Product.last 
    render template:"products/show"
  end
end
