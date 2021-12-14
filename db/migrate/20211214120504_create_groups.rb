class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :capacity
      t.references :trips, null: false, foreign_key: true

      t.timestamps
    end
  end
end
