class UserMailer < ActionMailer::Base
  default from: "hello@theseedsoflifecollection.co.za"

  def contact_form(email, name, message)
    @message = message
    @email = email
    mail(from: 'hello@theseedsoflifecollection.co.za', 
        to: 'hello@theseedsoflifecollection.co.za', 
        subject: "A new contact form message from #{name}")
  end
end