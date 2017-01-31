class RenameColumnToImageId < ActiveRecord::Migration[5.0]
  def change
    rename_column :photos, :cover_image_id, :image_id
  end
end
