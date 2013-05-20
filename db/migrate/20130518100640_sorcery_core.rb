class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,         :default => nil
      t.string :email,            :null => false
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.string :phone
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end