class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    # Message need a form to be instiated and chatroom
    @message = @chatroom.messages.new(message_params)
    @message.user = current_user
    if @message.save
      # This braodcast the message to the suscribed chatroom once a message is sent to suscriber
      ChatroomChannel.broadcast_to(@chatroom,
        render_to_string(partial: "message", locals: { message:
        @message })
      )
      # The counter cache may seem mysterious, but it’s not that complicated.
      # It’s just a database column storing the number of children, with the value automatically updated.
      #@chatroom.counter += 1
      #@chatroom.save

    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
