class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :offered_meals_id

      t.timestamps
    end
  end
end
