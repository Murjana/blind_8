class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    # @chatrooms = current_user.chatrooms.first(8)
    @chatrooms_a = Chatroom.where(user_a_id: current_user.id)
    @chatrooms_b = Chatroom.where(user_b_id: current_user.id)
    @chatrooms = @chatrooms_a + @chatrooms_b
  end

  def create
    @chatroom = Chatroom.find_by(user_a_id: params[:user_a_id], user_b_id: current_user.id) #Check if  chatroom for two users exisit
    @chatroom = Chatroom.new(user_a_id: params[:user_a_id], user_b_id: current_user.id) if @chatroom.nil? # creata new chatroom when there is no previous chatroom
    @chatroom.save
    if @chatroom.messages.length == 0 #send icebreakers if the chatroom has no messages
      @message = Message.new(chatroom: @chatroom, content: Icebreaker.all.sample.content, user_id: params[:user_a_id]) # Icebreakers when you poke someone
      @message.save
    end
    redirect_to chatroom_path(@chatroom)
  end
end
