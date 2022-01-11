import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="time-formatter"
export default class extends Controller {
  static targets = ["datetime"]

  connect() {
    this.datetimeTarget.innerText = this.formattedDateTime()
  }

  // private
  formattedDateTime() {
    const date = new Date(this.datetimeTarget.innerText)
    var options = { weekday: 'long', month: 'short', day: 'numeric', hour: 'numeric', minute: 'numeric' }
    return new Intl.DateTimeFormat('en-US', options).format(date)
  }
}
