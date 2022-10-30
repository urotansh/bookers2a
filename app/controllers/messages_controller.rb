class MessagesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    
    @message = Message.new
    
    @messages = Message.all
    
  end
  
  def create
    message = Message.new(message_params)
    message.user_id = current_user.id
    message.save
    redirect_to request.referer
  end
  
  private
  
  def message_params
    params.require(:message).permit(:body)
  end
  
  
end
