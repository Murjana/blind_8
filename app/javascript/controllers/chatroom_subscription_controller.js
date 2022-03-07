import { Controller } from "stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  // This target a specific room Id
  static values = { chatroomId: Number }
  static targets = [ "form", "messages" ]
  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: (message) => {
        // This inject the chat of one user to the chat of another without refreshing
        this.messagesTarget.insertAdjacentHTML("beforeend", message)
        // As soon as you inject the chat, the chat will appear without the need to scroll down
        this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
        
      } }
    )
  }
  // As soon as the element that connect to this controller disppears from the
  // DOM, this method get triggered and cancel our susbsription from the chatroom
  disconnect() {
    this.channel.unsubscribe()
  }
}
