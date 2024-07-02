require 'twilio-ruby'

class SendSms
  def initialize(to, body)
    @to = to
    @body = body
    @from = ENV['TWILIO_PHONE_NUMBER']
  end

  def call
    # debugger
    client = Twilio::REST::Client.new
    client.messages.create(
      from: @from,
      to: @to,
      body: @body
    )
  end
end
