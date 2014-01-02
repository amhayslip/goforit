desc "Attemping to use the scheduler to send a text at a certain time based on a user"

task :text => :environment do

time_in_float = Time.now.in_time_zone("Central Time (US & Canada)").hour + (Time.now.in_time_zone("Central Time (US & Canada)").min/60.to_f)

# time_in_float = Time.now.hour + (Time.now.min/60.to_f)
users = User.where(time: (time_in_float-0.4)..(time_in_float+0.4))

  users.each do |user|

        twilio_sid = ENV['TWILIO_SID']
        twilio_token = ENV['TWILIO_TOKEN']
        twilio_phone_number = ENV['TWILIO_PHONE_NUMBER']
        @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
        @twilio_client.account.sms.messages.create(
          :from => "+1#{twilio_phone_number}",
          :to => user.phone,
          :body => "#{user.name}, you're going to kick today in the teeth! Smile! Love, Textspiration")
      end
end

task :time => :environment do
  puts Time.now.in_time_zone("Central Time (US & Canada)").strftime("%I:%M%p")
end
