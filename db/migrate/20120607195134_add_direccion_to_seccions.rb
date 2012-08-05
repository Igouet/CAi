class AddDireccionToSeccions < ActiveRecord::Migration
  def change
    add_column :seccions, :direccion, :string

  end
end
