class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # This will any broadcast message to a specific chatroom and not all the chatroom the client have access to
    @chatroom = Chatroom.find(params[:id])
    stream_for @chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
