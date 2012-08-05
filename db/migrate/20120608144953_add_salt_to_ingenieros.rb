class AddSaltToIngenieros < ActiveRecord::Migration
  def change
    add_column :ingenieros, :salt, :string

  end
end
