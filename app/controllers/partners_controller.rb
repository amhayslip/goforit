class PartnersController < ApplicationController

	def index
		@partners = Partner.all
		@user = User.find(params[:id])
	end

	def new
		@partner = Partner.new
	end

	def create
		@partner = Partner.new(partner_params)
		@partner.save
		redirect_to root_path
	end

	def edit
		@partner = Partner.find(params[:id])
	end

	def update
		@partner = Partner.find(params[:id])
		@partner.update(partner_params)
		redirect_to root_path
	end

	def destroy
		@partner = Partner.find(params[:id])
		@partner.destroy
		redirect_to root_path
	end

private
	def partner_params
		params.require(:partner).permit(:first_name, :last_name, :email_address, :phone_number, :goal_id)
	end
end