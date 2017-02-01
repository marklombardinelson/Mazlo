class AddAuth0ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :auth0, :string
  end
end
