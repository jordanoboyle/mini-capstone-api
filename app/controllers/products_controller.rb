class ProductsController < ApplicationController

  def all
    # test render
    @products = Product.all
    render template: "products/index"
  end

  def single
    # test offering choice to render with params
    the_id = params[:id]
    @product = Product.find_by(id: the_id) 
    render template:"products/show"
  end
end
