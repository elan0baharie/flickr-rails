class CreatePhotosTags < ActiveRecord::Migration[5.1]
  def change
    create_table :photos_tags do |t|
      t.column :photo_id, :integer
      t.column :tag_id, :integer
    end
  end
end
