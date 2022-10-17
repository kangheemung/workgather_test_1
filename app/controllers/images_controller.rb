class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  def new
    @image =Image.new
  end
  def create
    p"params: #{params}"
    @image = Image.new(image_params)
    @image.user_id=1
    if @image.save
      redirect_to images_index_path
    else
      render '/images/new'
    end
  end

private
 def image_params
  params.require(:image).permit(:name)
 end
end
