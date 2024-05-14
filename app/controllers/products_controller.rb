class ProductsController < ApplicationController

  def all
    render json: {
      message: "hello there"
    }
  end

  def single 
    render json: {
      message: "hello there"
    }
  end
end
