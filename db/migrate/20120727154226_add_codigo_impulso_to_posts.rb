class AddCodigoImpulsoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :codigo_impulso, :string

  end
end
