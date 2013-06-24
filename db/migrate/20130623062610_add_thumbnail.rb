class AddThumbnail < ActiveRecord::Migration
  def up
    add_column :events, :thumbnail, :string 
  end

  def down
    remove_column :events, :thumbnail
  end
end
