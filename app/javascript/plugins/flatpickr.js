import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// flatpickr(".datepicker", {
//   altInput: true,
//   allowInput: true
// });
const endDate = document.querySelector('#booking_end_date');

flatpickr("#booking_start_date", {
  altInput: true,
  allowInput: true,
  // mode: "range",
  // dateFormat: "d.m.Y",
  minDate: "today",
  plugins: [new rangePlugin({ input: "#booking_end_date"})],

  onChange: function(selectedDates, selectedDate) {
    if (selectedDate === '') {
      endDate.disabled = true;
    } else if (selectedDate > endDate) {
      selectedDates = [];
    }

    let minDate = selectedDates[0];
    minDate.setDate(minDate.getDate() + 1);
    endDate.disabled = false;
  },
});

