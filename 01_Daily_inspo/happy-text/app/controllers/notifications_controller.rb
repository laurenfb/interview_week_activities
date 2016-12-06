class NotificationsController < ApplicationController

  def send_message(phone_number)
    twilio_number = ENV['TWILIO_NUMBER']
   client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
  end

  def receive()
    content_type 'text/xml'

    response = Twilio::TwiML::Response.new do |r|
      r.Message "Hey thanks for messaging me!"
    end

    response.to_xml
  end
end
