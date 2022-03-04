import { Controller } from "stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  // This target a specific room Id
  static values = { chatroomId: Number }
  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.ChatroomIdValue },
      { received: (message) => {
        // This inject the chat of one user to the chat of another without refreshing
        this.element.insertAdjacentHTML("beforeend", message)
        // As soon as you inject the chat, the chat will appear without the need to scroll down
        this.element.scrollTop = this.element.scrollHeight
      } }
    )
  }
  // As soon as the element that connect to this controller disppears from the
  // DOM, this method get triggered and cancel our susbsription from the chatroom
  disconnect() {
    this.channel.unsubscribe()
  }
}
