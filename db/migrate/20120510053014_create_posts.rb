class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :ingeniero_id
      t.integer :seccion_id
      t.string :titulo
      t.text :resumen
      t.text :contenido

      t.timestamps
    end
  end
end
