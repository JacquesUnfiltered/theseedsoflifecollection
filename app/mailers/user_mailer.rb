class UserMailer < ActionMailer::Base
  default from: "example@email.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email, 
        :to => 'jacques.leroux3@gmail.com', 
        :subject => "A new contact form message from #{name}")
  end
end