class PicturesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_picture, only: [ :upvote, :downvote]

  def index
    @pictures = Picture.all.order(:created_at => :desc)
    @picturesup = Picture.all.order(:cached_votes_score => :desc)
    @picture = Picture.new

    # @time = (picture.created_at.strftime("%e/%m/%y") - DateTime.now.to_date.strftime("%e/%m/%y"))
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.score = 0
    @picture.user = current_user
    if @picture.save
      respond_to do |format|
        format.html { redirect_to pictures_path }
        format.js { render "pictures/create" }
      end

    else
      flash.now[:alerte] = "Could not save client"
      render :index
    end
  end

  # upvote_from user
  # downvote_from user

  def upvote
    @picture.upvote_from current_user

    respond_to do |format|
      format.html { redirect_to pictures_path }
      format.js { render "pictures/vote" }
    end
  end

  def downvote
    @picture.downvote_from current_user

    respond_to do |format|
      format.html { redirect_to pictures_path }
      format.js { render "pictures/vote" }
    end
  end


  private

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:photo, :photo_cache)
  end

end
