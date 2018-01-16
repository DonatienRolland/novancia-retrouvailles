class RemoveUserIdFromPicture < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :user_id, :bigint
  end
end
