import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="conditions"
export default class extends Controller {
  static targets = ["condition1", "condition2", "condition3", "btn1", "btn2", "btn3", "buttonContinuer", "buttonConfirmer"]



  connect() {
    console.log("coucou")
    console.log("condition", this.condition1Target)
    console.log("btn", this.btn1Target)
    console.log("buttonContinuer", this.buttonContinuerTarget)
    console.log("buttonConfirmer", this.buttonConfirmerTarget)
    this.step = 1
  }


  first(event) {
    this.condition1Target.classList.remove("d-none")
    this.condition2Target.classList.add("d-none")
    this.condition3Target.classList.add("d-none")

    this.btn1Target.classList.add("paw-active")
    this.btn2Target.classList.remove("paw-active")
    this.btn3Target.classList.remove("paw-active")
    this.step = 1
    this.buttonContinuerTarget.classList.remove("d-none")
    this.buttonConfirmerTarget.classList.add("d-none")
  }

  second(event) {
  this.condition1Target.classList.add("d-none")
  this.condition2Target.classList.remove("d-none")
  this.condition3Target.classList.add("d-none")

  this.btn1Target.classList.remove("paw-active")
  this.btn2Target.classList.add("paw-active")
  this.btn3Target.classList.remove("paw-active")
  this.step = 2
  this.buttonContinuerTarget.classList.remove("d-none")
  this.buttonConfirmerTarget.classList.add("d-none")

  }

  third(event) {
    this.condition1Target.classList.add("d-none")
    this.condition2Target.classList.add("d-none")
    this.condition3Target.classList.remove("d-none")

    this.btn1Target.classList.remove("paw-active")
    this.btn2Target.classList.remove("paw-active")
    this.btn3Target.classList.add("paw-active")
    this.step = 3
    console.log(this.buttonContinuerTarget)
    this.buttonContinuerTarget.classList.add("d-none")
    this.buttonConfirmerTarget.classList.remove("d-none")



    }

    nextstep(event) {
      if (this.step === 1) {
        this.second(event)
      }
      else if (this.step === 2){
        this.third(event)
      }
    }

}
