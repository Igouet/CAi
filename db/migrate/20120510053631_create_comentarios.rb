class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :post_id
      t.text :contenido
      t.integer :ingeniero_id

      t.timestamps
    end
  end
end
