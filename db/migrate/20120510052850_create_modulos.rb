class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :name
      t.string :molde

      t.timestamps
    end
  end
end
