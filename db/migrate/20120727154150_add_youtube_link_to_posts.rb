class AddYoutubeLinkToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :youtube_link, :string

  end
end
