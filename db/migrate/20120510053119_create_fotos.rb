class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :name
      t.text :descripcion
      t.integer :album_id

      t.timestamps
    end
  end
end
