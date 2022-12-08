import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profil"
export default class extends Controller {

  static targets = ['cat', 'dog', 'chat', 'chien']

  connect() {
    this.handleCheck()
  }

  handleCheck() {
    if(this.chatTarget.classList.value.includes("d-none")) {
      this.chatTarget.classList.remove("d-none");
    }

    if(this.chienTarget.classList.value.includes("d-none")) {
      this.chienTarget.classList.remove("d-none");
    }

    if(this.catTarget.checked) {
      this.chatTarget.innerHTML = "Avec";
    } else {
      this.chatTarget.innerHTML = "Sans";
    }

    if(this.dogTarget.checked) {
      this.chienTarget.innerHTML = "Avec";
    } else {
      this.chienTarget.innerHTML = "Sans";
    }
  }
}
