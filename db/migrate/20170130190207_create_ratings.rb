class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :stars
      t.integer :meal_selections_id

      t.timestamps
    end
  end
end
