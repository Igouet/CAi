class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :name
      t.integer :manager_id

      t.timestamps
    end
  end
end
