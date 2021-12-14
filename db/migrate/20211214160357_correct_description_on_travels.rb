class CorrectDescriptionOnTravels < ActiveRecord::Migration[6.1]
  def change
    rename_column :travels, :descrition, :description
  end
end
