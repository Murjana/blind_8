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
      @chatroom.counter += 1
      @chatroom.save

    else
      render "chatrooms/show"
    end

    def destroy
      @message = Message.find(params[:id])
      @message.destroy
      redirect_to #this should be re-directed to the list of pokers
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
