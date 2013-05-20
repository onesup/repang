class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :message

      t.timestamps
    end
  end
end
