require 'rubygems'
require 'twilio-ruby'
 
@client = Twilio::REST::Client.new do |config|
	config.account_sid = ENV ['account_sid']
	config.auth_token = ENV ['auth_token']
end

# Get an object from its sid. If you do not have a sid,
# check out the list resource examples on this page
# @client.account.sms.messages.list.each do |sms|
#     puts sms.to
#     puts sms.from
#     puts sms.body
#     puts sms.sid
# end
@sms = @client.account.sms.messages.create(
	:body => "Test",
	:to => "+19728321992",
	:from => "+15129611454")
puts @sms.body

  def twilio_send_text
  	account_sid = "AC8eb3d192129a3656989cae038db8c198"
  	auth_token = "443896e569a945af7bf5a73e2ea0f966"
	  @client = Twilio::REST::Client.new account_sid, auth_token

	  @sms = @client.account.sms.messages.create(
	  	:body => "Test",
	  	:to => "+19728321992",
	  	:from => "+15129611454")
	  puts @sms.body
	 end

