class Contact < ApplicationRecord
  def send_reminder(sms_message)
    account_sid = 'SNIP'
    auth_token = 'SNIP'
    @client = Twilio::REST::Client.new(account_sid, auth_token) 
    message = @client.messages.create(
                                 body: sms_message,
                                 messaging_service_sid: 'SNIP',
                                 to: '+SNIP '
                               ) 
    Rails.logger.info(message.inspect)
  end
end
