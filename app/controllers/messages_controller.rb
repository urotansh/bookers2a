class MessagesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    
    @message = Message.new
    
    @messages = Message.all
    
  end
end
