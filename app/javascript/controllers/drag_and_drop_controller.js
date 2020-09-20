import { Controller } from 'stimulus';
import Rails from '@rails/ujs';
import $ from 'jquery';

export default class extends Controller {
  static targets = ['dropzone', 'draggable']

  initialize() {
    this.dropzoneTargets.forEach((ele) => {
      ele.addEventListener('dragover', (e) => e.preventDefault());
      ele.addEventListener('drop', (e) => this._handleDrop(e));
      $(ele).on('dragover', () => {
        $(ele).addClass('hover');
      });
      $(ele).on('dragleave', () => {
        $(ele).removeClass('hover');
      });
    });
    this.draggableTargets.forEach((ele) => {
      ele.draggable = true;
      ele.addEventListener('dragstart', (e) => { this.current = e.target; });
    });
  }

  _handleDrop(event) {
    event.preventDefault();
    const form = $(event.target).closest('form')[0];
    form.action = form.action.replace(':id', this.current.dataset.id);
    Rails.fire(form, 'submit'); // Submit with Rails for AJAX
  }
}
