import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// flatpickr(".datepicker", {
//   altInput: true,
//   allowInput: true
// });

flatpickr("#booking_start_date", {
  altInput: true,
  allowInput: true,
  dateFormat: "d-m-Y",
  defaultDate: "today",
  minDate: "today",
  plugins: [new rangePlugin({ input: "#booking_end_date"})]
});
