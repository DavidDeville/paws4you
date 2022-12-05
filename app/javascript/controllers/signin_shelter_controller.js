import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="signin-shelter"
export default class extends Controller {
  static targets = ["checkbox", "shelterInput"]

  connect() {
    console.log(this.shelterInputTarget)
    this.updateInputShelter()
  }

  updateInputShelter() {
    console.log(this.checkboxTarget.checked)
    if (this.checkboxTarget.checked) {
      this.shelterInputTarget.classList.remove("d-none")
      console.log(this.shelterInputTarget)
    } else {
      this.shelterInputTarget.classList.add("d-none")
    }
  //   if (window.scrollY >= window.innerHeight) {
  //     this.element.classList.add("d-none")
  //   } else {
  //     this.element.classList.remove("d-none")
  //   }
  }
}
