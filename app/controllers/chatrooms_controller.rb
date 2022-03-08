class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end



end


#max_length = first(selector here).value

#if max_length.length > 255
 #   puts 'Limit exceeds 255 characters - error'
#else
 #   puts 'Limit is 255 characters - pass'
    #end
#end
