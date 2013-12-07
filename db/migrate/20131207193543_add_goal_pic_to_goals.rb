class AddGoalPicToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :goal_pic, :string
  end
end
