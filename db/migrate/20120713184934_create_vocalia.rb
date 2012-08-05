class CreateVocalia < ActiveRecord::Migration
  def change
    create_table :vocalia do |t|
      t.string :nombre
      t.text :resumen
      t.text :contenido
      t.integer :seccion_id

      t.timestamps
    end
  end
end
