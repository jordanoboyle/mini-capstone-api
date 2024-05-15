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
    p "This is hardcoded, but testing function"
    @product = Product.new(name: "Rogue Fable III", price: 15, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIbcd6lTTM34jHqBlYGmHP8zU-LDKSXkSqxHZ2NpS3HA&s", description: "Rogue like with spells and wizards. Simplistic maybe, but addicting as all hell!")
    @product.save

    render template:"products/show"  
  end
end
