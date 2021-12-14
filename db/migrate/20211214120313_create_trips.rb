class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.references :users, null: false, foreign_key: true
      t.references :groups, null: false, foreign_key: true

      t.timestamps
    end
  end
end
