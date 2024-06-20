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
    @image            = Image.find_by(id: params[:id])
    @image.product_id = params[:product_id] || @image.product_id
    @image.url        = params[:url] || @image.url

    if @image.save
      render template: "images/show"
    else
      render json: {ERROR: @image.errors.full_messages}
    end

  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy

    render template: "images/show"
  end
end
