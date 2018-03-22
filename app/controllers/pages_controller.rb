class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def trucdemaladeAVEMCREATION
    @users = User.all
    @pictures = Picture.all
  end

  def actu_picture
    @pictures = Picture.all
    @users = User.all
    render json: @pictures
  end

end
