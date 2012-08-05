class CreateIngenieros < ActiveRecord::Migration
  def change
    create_table :ingenieros do |t|
      t.string :name
      t.string :email
      t.integer :permiso, :default => 0

      t.timestamps
    end
  end
end
