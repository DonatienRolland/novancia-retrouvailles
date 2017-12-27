class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :descritpion
      t.integer :nb_vote

      t.timestamps
    end
  end
end
