class RemoveGroupeIdFromPicture < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :groupe_id, :bigint
  end
end
