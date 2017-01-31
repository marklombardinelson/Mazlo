class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.integer :chef_id
      t.integer :cuisine_id
      t.string :name
      t.string :ingredients
      t.integer :suggested_price

      t.timestamps
    end
  end
end
