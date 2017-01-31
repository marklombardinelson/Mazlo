class CreateMealSelections < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_selections do |t|
      t.integer :user_id
      t.integer :offered_meal_id

      t.timestamps
    end
  end
end
