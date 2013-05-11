class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :started_at
      t.datetime :finished_at
      t.string :title
      t.string :status
      t.text :livere_code
      t.string :image_url

      t.timestamps
    end
  end
end
