class AddLugarIdToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :lugar_id, :integer

  end
end
