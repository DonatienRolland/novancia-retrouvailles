class PicturesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_picture, only: [ :upvote, :downvote]

  def index
    @pictures = Picture.all.order(:created_at => :desc)
    @picturesup = Picture.all.order(:cached_votes_score => :desc)
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

  # upvote_from user
  # downvote_from user

  def upvote
    @picture.upvote_from current_user
    redirect_to pictures_path
  end

  def downvote
    @picture.downvote_from current_user
    redirect_to pictures_path
  end


  private

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:photo, :photo_cache)
  end

end
