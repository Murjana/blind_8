class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    # Message need a form to be instiated
    @message = Message.new(message_params)
    # Message needs a chatroom
    @message.chatroom = @chatroom
    # Message needs a user
    @message.user = current_user
    if @message.save
      # This braodcast the message to the suscribed chatroom once a message is sent to suscriber
      ChatroomChannel.broadcast_to(@chatroom,
        render_to_string(partial: "message", locals: { message:
        @message })
      )
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
