class MessagesController < ApplicationController
  
  def index
    @messages = Message.all
  end
  def new
    @message = Message.new
  end

  def create
    # Strong Parameter の記述
    Message.create(message_params)
  end
  private
  def message_params
    params.require(:message).permit(:title, :contents)
  end
end
