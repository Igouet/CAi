class CreateMensajes < ActiveRecord::Migration
  def change
    create_table :mensajes do |t|
      t.string :titulo
      t.text :contenido
      t.integer :emisor_id
      t.integer :ingeniero_id
      t.boolean :leido

      t.timestamps
    end
  end
end
