class AddGroupeToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :groupe, foreign_key: true
  end
end
