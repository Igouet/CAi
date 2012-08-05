class CreatePartidos < ActiveRecord::Migration
  def change
    create_table :partidos do |t|
      t.integer :local_id
      t.integer :visita_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
