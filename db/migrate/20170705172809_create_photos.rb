class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.column :user_id, :integer
      t.column :caption, :string

      t.timestamps
    end
  end
end
