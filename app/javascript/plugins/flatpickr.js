import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import { French } from "flatpickr/dist/l10n/fr.js"

flatpickr("#rangeStart", {
    dateFormat: 'd/m/Y',
    minDate: "today",
    "locale": French,
    onChange: function(selectedDates, dateStr, instance) {
      let scooterId = document.getElementById('scooter').dataset.id
      $.ajax({url: `/scooters/${scooterId}/refresh_price`});
    },
    "plugins": [new rangePlugin({ input: "#rangeEnd"})]
});
