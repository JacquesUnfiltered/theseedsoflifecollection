class SimplePagesController < ApplicationController
  def index
  end

  def about
  end

  def shop
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@name, @email, @message).deliver
  end
  
end
