# controls the rendering of the pictures model
class PicturesController < ApplicationController
  def index
    @pictures = Picture.where(user: current_user)
    @picture = Picture.new
  end

  def create
    @pictures = Picture.where(user: current_user)
    @picture = current_user.pictures.create(picture_params)
    render :index
  end

  private

  def picture_params
    params.require(:picture).permit(:square_image, :name, :short_description)
  end
end
