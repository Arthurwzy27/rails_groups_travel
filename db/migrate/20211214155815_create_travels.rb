class CreateTravels < ActiveRecord::Migration[6.1]
  def change
    create_table :travels do |t|
      t.string :name
      t.text :descrition
      t.string :location
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
