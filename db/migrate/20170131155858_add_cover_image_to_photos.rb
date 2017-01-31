class AddCoverImageToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :cover_image_id, :string
  end
end
