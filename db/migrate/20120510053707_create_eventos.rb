class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :name
      t.text :descripcion
      t.integer :seccion_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
