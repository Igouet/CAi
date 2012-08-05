class AddImpulsoLinkToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :impulso_link, :text

  end
end
