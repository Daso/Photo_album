class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :user

      t.timestamps
    end
  end
end
