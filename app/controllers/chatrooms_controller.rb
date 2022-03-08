class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = current_user.chatrooms.first(8)
  end
end


#max_length = first(selector here).value

#if max_length.length > 255
 #   puts 'Limit exceeds 255 characters - error'
#else
 #   puts 'Limit is 255 characters - pass'
    #end
#end
