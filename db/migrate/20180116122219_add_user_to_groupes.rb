class AddUserToGroupes < ActiveRecord::Migration[5.1]
  def change
    add_reference :groupes, :user, foreign_key: true
  end
end
