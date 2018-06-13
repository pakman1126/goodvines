class SimplePagesController < ApplicationController
  def index
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
        to: 'pakman1126@yahoo.com',
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
    end
end
