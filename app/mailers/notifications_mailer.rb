class NotificationsMailer < ActionMailer::Base
  default from: "neueve.suppositories@gmail.com"
  default to: "neueve.suppositories@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Neueve Contact Form] New message from : #{message.name}")
  end


end
