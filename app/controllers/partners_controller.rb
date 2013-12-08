class PartnersController < ApplicationController

	def index
		@partners = Partner.all
	end

	def new
		@partner = Partner.new
	end

	def create
		@partner = Partner.new(partner_params)
		@partner.save
		if @partner.save
			redirect_to partners_path, :notice => "Partner created."
		else
			redirect_to partners_path, :notice => "Unable to create new partner."
		end
	end

	def edit
		@partner = Partner.find(params[:id])
	end

	def update
		@partner = Partner.find(params[:id])
		@partner.update(partner_params)
		if @partner
		  redirect_to partners_path, :notice => "Partner updated."
		else
		  redirect_to partners_path, :alert => "Unable to update partner."
		end
	end

	def destroy
		@partner = Partner.find(params[:id])
		@partner.destroy
		redirect_to partners_path
	end

private
	def partner_params
		params.require(:partner).permit(:first_name, :last_name, :email_address, :phone_number, :goal_id, :frequency)
	end
end