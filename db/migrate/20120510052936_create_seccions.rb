class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.integer :modulo_id
      t.string :name

      t.timestamps
    end
  end
end
