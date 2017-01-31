class CreateOfferedMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :offered_meals do |t|
      t.integer :event_id
      t.integer :meal_id
      t.integer :price
      t.text :customizations

      t.timestamps
    end
  end
end
