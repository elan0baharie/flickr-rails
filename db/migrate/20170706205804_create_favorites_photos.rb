class CreateFavoritesPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites_photos do |t|
      t.column :favorite_id, :integer
      t.column :photo_id, :integer
    end
  end
end
