import { Controller } from "stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  // This target a specific room Id
  static values = { chatroomId: Number }
  connect() {
    consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.ChatroomIdValue },
      { received: (message) => {
        // This inject the chat of one user to the chat of another without refreshing
        this.element.insertAdjacentHTML("beforeend", message)
      } }
    )
  }
}
