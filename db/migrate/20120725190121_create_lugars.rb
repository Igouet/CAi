class CreateLugars < ActiveRecord::Migration
  def change
    create_table :lugars do |t|
      t.string :nombre
      t.string :x
      t.string :y

      t.timestamps
    end
  end
end
