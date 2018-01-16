class RemoveUserIdFromGroupe < ActiveRecord::Migration[5.1]
  def change
    remove_column :groupes, :user_id, :bigint
  end
end
