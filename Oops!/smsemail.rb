class Message
  def send_message
    raise NotImplementedError
  end
end

class EmailMessage < Message
  def send_message
    puts "Sending an email message: 'Hello'"
  end
end

class SMSMessage < Message
  def send_message
    puts "Sending an SMS message: 'Hello, this is sms'"
  end
end

def send_notification(message)
  message.send_message
end

email = EmailMessage.new
sms = SMSMessage.new

send_notification(email)
send_notification(sms)

