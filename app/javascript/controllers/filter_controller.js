import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['check'];

  connect() {
    this.checkTargets.forEach(checkbox => {
      checkbox.addEventListener('change', (event) => {
        event.target.closest('form').submit();
      })
    })
  }
}
