class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.timestamp :held_at
      t.string :address

      t.timestamps
    end
  end
end
