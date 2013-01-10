class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      flash[:success] = "Message was successfully sent. Thank you for contacting us!"
      redirect_to(root_path)
    else
      flash.now[:error] = "Please ensure that all fields are filled correctly."
      render :new
    end
  end

end
