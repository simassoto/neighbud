import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['input', 'value'];

  connect() {
    this.valueTarget.innerHTML = this.inputTarget.value;

    this.inputTarget.addEventListener('input', (event) => {
      this.valueTarget.innerHTML = event.target.value;
    })

    this.inputTarget.addEventListener('change', (event) => {
      event.target.closest('form').submit();
    })
  }
}
