class AddUserIdToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :user_id, :bigint
  end
end
