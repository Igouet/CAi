class AddCantidadComentariosToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cantidad_comentarios, :integer, :default => 0

  end
end
