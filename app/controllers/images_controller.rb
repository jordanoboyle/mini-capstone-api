class ImagesController < ApplicationController

  def create
    @image = Image.new(
      product_id: params[:product_id],
      url: params[:url]
    )

    if @image.save
      render template: "images/show"
    else
      render json: {ERROR: @image.errors.full_messages}
    end
  end
  
  def index
    @images = Image.all
    render template: "images/index"
  end

  def show
    @image = Image.find_by(id: params[:id])
    render template: "images/show"
  end

  def update
    render json: {message: "Hello there"}
  end

  def destroy
    render json: {message: "Hello there"}
  end
end
