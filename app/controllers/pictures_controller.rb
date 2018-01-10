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
      flash.now[:alerte] = "Could not save client"
      render :index
    end
  end

  def upvote
    @picture = Picture.find(params[:id])
    if current_user.voted_for? @picture
      current_user.unvote_for @picture
    else
      current_user.up_votes @picture
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:photo, :photo_cache)
  end

end
