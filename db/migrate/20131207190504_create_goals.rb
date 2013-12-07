class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :title
      t.date :deadline
      t.text :description
      t.blob :goal_pic

      t.timestamps
    end
  end
end
