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
    @image = Image.find_by(id: 30)
    @image.product_id = 10
    @image.url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK-wWeNXDdM9IoN04AOKa8Li7rq7KQSk06WqLxSUEyeA&s"

    @image.save
    render template: "images/show"
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy

    render template: "images/show"
  end
end
