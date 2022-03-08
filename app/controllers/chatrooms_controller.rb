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

  def chatroom_params
    params.require(:chatroom).permit(:user_a_id, :user_b_id)
  end

end


#max_length = first(selector here).value

#if max_length.length > 255
 #   puts 'Limit exceeds 255 characters - error'
#else
 #   puts 'Limit is 255 characters - pass'
    #end
#end
