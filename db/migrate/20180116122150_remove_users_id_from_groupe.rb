class RemoveUsersIdFromGroupe < ActiveRecord::Migration[5.1]
  def change
    remove_column :groupes, :users_id, :bigint
  end
end
