class AddLugarToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :lugar, :string

  end
end
