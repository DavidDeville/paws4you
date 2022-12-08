import { Controller } from "@hotwired/stimulus"

import { Fireworks } from 'fireworks-js'

const container = document.querySelector('.fire')
const fireworks = new Fireworks(container, {
  autoresize: true,
  opacity: 1,
  acceleration: 1.05,
  friction: 0.97,
  gravity: 1.5,
  particles: 50,
  traceLength: 3,
  traceSpeed: 10,
  explosion: 5,
  intensity: 50,
  flickering: 50,
  hue: {
    min: 0,
    max: 360
  },
  delay: {
    min: 30,
    max: 60
  },
  rocketsPoint: {
    min: 50,
    max: 50
  },
  lineWidth: {
    explosion: {
      min: 1,
      max: 3
    },
    trace: {
      min: 1,
      max: 2
    }
  },
  brightness: {
    min: 50,
    max: 80
  },
  decay: {
    min: 0.015,
    max: 0.03
  },
  mouse: {
    click: false,
    move: false,
    max: 1
  }
})


// Connects to data-controller="fireworks"
export default class extends Controller {

  static targets = ['firebtn']

  connect() {
    console.log("fireworks!")

  }

  test() {
    this.firebtnTarget.innerHTML = "Demande envoyée !";
    setInterval(() => {
      fireworks.start()
    }, 1000);
  }
}
