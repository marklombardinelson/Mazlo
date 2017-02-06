class AddMaximumGuestCountToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :maximum_guest_count, :integer
  end
end
