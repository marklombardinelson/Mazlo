class CreateCuisines < ActiveRecord::Migration[5.0]
  def change
    create_table :cuisines do |t|
      t.integer :meal_id
      t.integer :category_id

      t.timestamps
    end
  end
end
