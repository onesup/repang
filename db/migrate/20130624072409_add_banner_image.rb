class AddBannerImage < ActiveRecord::Migration
  def up
    add_column :events, :banner_image, :string 
    add_column :events, :banner_link, :string
    add_column :events, :facebook_description, :string 
  end

  def down
  end
end
