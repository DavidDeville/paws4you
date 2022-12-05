import { Controller } from "@hotwired/stimulus"
// Connects to data-controller="list"
export default class extends Controller {
  static targets = ["pet", "test"]

  connect() {
    this.#displayFirstCard();
  }

  addToWishList(event) {
    event.preventDefault();
    console.log(event.currentTarget.dataset.index);
    let url = event.currentTarget.href;
    let petId = parseInt(event.currentTarget.dataset.petId, 10);
    let liked = JSON.parse(event.currentTarget.dataset.liked.toLowerCase());
    fetch(url, {
      method: "POST",
      headers:
      { "Accept": "application/json",
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        petId: petId,
        liked: liked
      })
    })
    .then(response => response.text())
    .then((data) => {
      // console.log(data);
    })
    this.#displayNextCard(parseInt(event.currentTarget.dataset.index, 10));
  }

  #displayFirstCard() {
    if(this.petTargets.length !== 0) {
      this.petTargets[0].classList.remove("d-none");
      this.petTargets[0].classList.add("d-block");
    }
  }

  #displayNextCard(index) {
    console.log(this.petTargets.length);
    if(index !== undefined) {
      this.petTargets[index].classList.remove("d-block");
      this.petTargets[index].classList.add("d-none");

      if(this.petTargets.length !== index + 1) {
        this.petTargets[index + 1].classList.remove("d-none");
        this.petTargets[index + 1].classList.add("d-block");

      } else {
        this.testTarget.classList.remove("d-none");
      }
    }
  }
}
