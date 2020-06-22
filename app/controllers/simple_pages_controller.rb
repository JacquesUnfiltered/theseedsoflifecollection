class SimplePagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def download_cv
  send_file(
    "#{Rails.root}/public/cv-jacques-le-roux.pdf",
    filename: "CV - Jacques le Roux.pdf",
    type: "application/pdf"
  )
  end


  # def thank_you
  #   @name = params[:name]
  #   @email = params[:email]
  #   @message = params[:message]
  #   ActionMailer::Base.mail(form: @email,
  #                             to: 'jacques.leroux3@gmail.com',
  #                        subject: "A new email from #{@name}",
  #                           body: @message).deliver_now
  # end

end
