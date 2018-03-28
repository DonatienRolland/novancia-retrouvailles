class PicturesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_picture, only: [ :upvote, :downvote, :time]

  def index
    @pictures = Picture.all.order(:created_at => :desc)
    @picturesup = Picture.all.order(:cached_votes_score => :desc)
    @picture = Picture.new
  end


  def new
    @pictures = Picture.all
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.score = 0
    @picture.user = current_user
    if @picture.save
      # binding.pry
      respond_to do |format|
        format.html { redirect_to pictures_path }
        format.js { render "pictures/create" }
      end

    else
      render :index
    end
  end


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

  def last_picture
    render json: {
      url: Picture.last.photo.url
    }.to_json
  end

  # def list_id
  #   results = Cloudinary::Api.resources(type:"upload").20.times
  #   resources = results["resources"]
  #   @ids = resources.map {|res| res["public_id"]}

  #   render json: {
  #     ids: @ids
  #   }.to_json

  # end



  private

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:photo, :photo_cache)
  end

end
