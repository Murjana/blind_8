import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["notice"];
  connect() {
    console.log("Hello from our first Stimulus controller");
  }
  poke(event) {
    event.preventDefault();
    this.noticeTarget.classList.remove("d-none");
  }
  close(event) {
    event.preventDefault();
    this.noticeTarget.classList.add("d-none");
  }
}
