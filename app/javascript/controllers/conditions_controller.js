import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="conditions"
export default class extends Controller {
  static targets = ["condition1", "condition2", "condition3", "btn1", "btn2", "btn3"]



  // connect() {
  //   console.log("coucou")
  //   console.log("condition", this.condition1Target)
  //   console.log("btn", this.btn1Target)

  // }


  first(event) {
    this.condition1Target.classList.remove("d-none")
    this.condition2Target.classList.add("d-none")
    this.condition3Target.classList.add("d-none")

    this.btn1Target.classList.add("paw-active")
    this.btn2Target.classList.remove("paw-active")
    this.btn3Target.classList.remove("paw-active")
  }

  second(event) {
  this.condition1Target.classList.add("d-none")
  this.condition2Target.classList.remove("d-none")
  this.condition3Target.classList.add("d-none")

  this.btn1Target.classList.remove("paw-active")
  this.btn2Target.classList.add("paw-active")
  this.btn3Target.classList.remove("paw-active")

  }

  third(event) {
    this.condition1Target.classList.add("d-none")
    this.condition2Target.classList.add("d-none")
    this.condition3Target.classList.remove("d-none")

    this.btn1Target.classList.remove("paw-active")
    this.btn2Target.classList.remove("paw-active")
    this.btn3Target.classList.add("paw-active")

    }

}
