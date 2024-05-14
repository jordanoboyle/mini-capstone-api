class ProductsController < ApplicationController

  def all
    # test render
    product = Product.first
    render json: {
      id: product.id,
      name: product.name,
      price: product.price,
      image_url: product.image_url,
      description: product.description,
      created_at: product.created_at,
      updated_at: product.updated_at
    }
  end

  def single
    # test whether we can render from db
    product = Product.last 
    render json: {
      id: product.id,
      name: product.name,
      price: product.price,
      image_url: product.image_url,
      description: product.description,
      created_at: product.created_at,
      updated_at: product.updated_at
    }
  end
end
