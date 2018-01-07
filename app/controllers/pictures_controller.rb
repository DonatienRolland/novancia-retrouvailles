class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    # @picture.user = current_user
    if @picture.save
      redirect_to @picture, notice: 'Picture was created'
    else
      render :new
    end
  end

  private

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:photo)
  end

end
