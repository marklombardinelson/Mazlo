class RenameColumnToOfferedMealId < ActiveRecord::Migration[5.0]
  def change
    rename_column :photos, :offered_meals_id, :offered_meal_id
  end
end
