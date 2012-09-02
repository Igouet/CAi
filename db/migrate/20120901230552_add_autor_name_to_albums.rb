class AddAutorNameToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :autor, :string

  end
end
