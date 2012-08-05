class AddDestacadoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :destacado, :boolean, :default => false

  end
end
