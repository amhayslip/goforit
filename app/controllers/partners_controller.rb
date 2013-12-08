require 'rubygems'
require 'twilio-ruby'

class PartnersController < ApplicationController

	def index
		@partners = Partner.all

	end

	def new
		@partner = Partner.new
		@goals = Goal.all
	end

	def create
		@partner = Partner.new(partner_params)
		@partner.save
		partner_phone_number = @partner.phone_number
		twilio_send_text("Welcome to GoForIt! Thank you for being an accountability partner, #{@partner.first_name}.", partner_phone_number)
		if @partner.save
			redirect_to user_partners_path(:user_id), :notice => "Partner created."
		else
			redirect_to user_partners_path(:user_id), :notice => "Unable to create new partner."
		end
	end

	def edit
		@partner = Partner.find(params[:id])
		@goals = Goal.all
	end

	def update
		@partner = Partner.find(params[:id])
		@partner.update(partner_params)
		if @partner
		  redirect_to user_partners_path(:user_id), :notice => "Partner updated."
		else
		  redirect_to user_partners_path(:user_id), :alert => "Unable to update partner."
		end
	end

	def destroy
		@partner = Partner.find(params[:id])
		@partner.destroy
		redirect_to user_partners_path(:user_id)
	end

  def twilio_send_text(body, to)
  	account_sid = "AC8eb3d192129a3656989cae038db8c198"
  	auth_token = "443896e569a945af7bf5a73e2ea0f966"
	  client = Twilio::REST::Client.new account_sid, auth_token

	  client.account.sms.messages.create(
	  	:body => body,
	  	:to => to,
	  	:from => "+15129611454")
	end

private
	def partner_params
		params.require(:partner).permit(:first_name, :last_name, :email_address, :phone_number, :goal_id, :frequency)
	end
end