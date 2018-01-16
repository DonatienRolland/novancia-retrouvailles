class Groupe < ApplicationRecord
  # belongs_to :user
  # has_many :pictures

def index
  @groupe = params[:groupe]
end


end
