class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
    @picture = Picture.new
  end
  def new
    @picture = Picture.new
  end

  def create

    @picture = Picture.new(picture_params)
    @picture.score = 0
    @picture.user = current_user
    if @picture.save
      redirect_to pictures_path, notice: 'Picture was created'
    else
      raise
      render :index
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:photo, :photo_cache)
  end

end
