class RenameColumnToMealSelectionId < ActiveRecord::Migration[5.0]
  def change
    rename_column :ratings, :meal_selections_id, :meal_selection_id
  end
end
