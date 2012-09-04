class AddAutorToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :autor_id, :integer

  end
end
