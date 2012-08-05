class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :ingenieros, :encrypted_password, :string

  end
end
