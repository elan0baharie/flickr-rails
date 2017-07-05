class AddFileToPhotos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :photos do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :photos, :file
  end
end
