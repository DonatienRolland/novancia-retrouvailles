class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def trucdemaladeAVEMCREATION
    @users = User.all
  end
end
