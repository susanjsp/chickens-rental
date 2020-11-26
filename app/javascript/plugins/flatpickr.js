import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const end_date = document.querySelector('#booking_end_date');

flatpickr(".datepicker", {
  altInput: true,
  minDate: "today",
});

// flatpickr(end_date, {
//   minDate: end_date.value + 1;
// });
// flatpickr("#booking_start_date", {
//   altInput: true,
//   allowInput: true,
//   // mode: "range",
//   minDate: 'today',
//   plugins: [new rangePlugin({ input: "#booking_end_date"})],
// });
