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
	end

	def edit
	end

	def update
	end

	def delete
	end

private
	def partner_params
		require(:partner).permit(:first_name, :last_name, 
			:email_address, :phone_number)
	end
end