class AddTerminoToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :termino, :datetime

  end
end
