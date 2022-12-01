import { Controller } from "@hotwired/stimulus"
// Connects to data-controller="list"
export default class extends Controller {
  static targets = ["pet"]

  connect() {
    // this.#switchCards()
    console.log(this.petTargets);
    this.#displayFirstCard();
  }

  addToWishList(event) {
    event.preventDefault();
    console.log(event.currentTarget);

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
        petId,
        liked
      })
    })
    .then(response => response.text())
    .then((data) => {
      this.#displayNextCard(parseInt(event.currentTarget.dataset.index, 10));
    })
  }

  #displayFirstCard() {
    this.petTargets[0].classList.remove("d-none");
    this.petTargets[0].classList.add("d-block");
    console.log(this.petTargets.indexOf(this.petTarget));
  }

  #displayNextCard(index) {
    this.petTargets[index].classList.remove("d-block");
    this.petTargets[index].classList.add("d-none");
    console.log('l\'index:', index);
    if(index == 0) {
      this.petTargets[index ].classList.remove("d-none");
      this.petTargets[index].classList.add("d-block");
    }
    else {
      this.petTargets[index + 1].classList.remove("d-none");
      this.petTargets[index + 1].classList.add("d-block");
    }
  }

  // #test() {

  //   const array1 = this.petTargets;

  //   const firstElement = array1.shift();

  //   console.log(array1);
  //   // const array1 = this.petTargets;
  //   // const firstElement = array1.shift();
  //   // console.log("array1:",array1);
  //   // console.log("firstElement:", firstElement);
  //   // console.log("this.petTargets:",this.petTargets);
  // }
}
