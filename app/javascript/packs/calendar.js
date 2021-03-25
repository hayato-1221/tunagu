document.addEventListener("turbolinks:load", () => {
  flatpickr.localize(flatpickr.l10ns.ja)
  const config = {
    disableMobile: true
  }
  flatpickr('#calendar_form', config);
});