class SendTextController < ApplicationController
  def index
  end
 
  def send_text_message
    number_to_send_to = params[:phone_number]
 
    twilio_sid = "AC8eb3d192129a3656989cae038db8c198"
    twilio_token = "443896e569a945af7bf5a73e2ea0f966"
    twilio_phone_number = "5129611454"
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end