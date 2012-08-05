class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.text :descripcion
      t.integer :evento_id

      t.timestamps
    end
  end
end
