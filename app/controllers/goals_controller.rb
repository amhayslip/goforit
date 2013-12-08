class GoalsController < ApplicationController
	def show
		@goal = Goal.find(params[:id])
	end
	
	def index
		@goals = Goal.all
	end
	
	def new
		@goal = Goal.new
		@goal.user_id = params[:user_id]
	end
	
	def create
		@goal = Goal.new(goal_params)
		# Assign user id to new goal
		@goal.user_id = params[:user_id]
		@goal.save
		redirect_to root_path
	end
	
	def edit
		@goal = Goal.find(params[:id])
	end
	
	def update
		@goal = Goal.find(params[:id])
		@goal.update(goal_params)
		redirect_to root_path
	end
	
	def destroy
		@goal = Goal.find(params[:id])
		@goal.destroy
		redirect_to root_path
	end
	
	private
	def goal_params
		params.require(:goal).permit(:user_id, :title, :deadline, :description, :goal_pic)
	end

end