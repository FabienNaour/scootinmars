import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import { French } from "flatpickr/dist/l10n/fr.js"

flatpickr("#rangeStart", {
    dateFormat: 'd/m/Y',
    minDate: "today",
    "locale": French,
    "plugins": [new rangePlugin({ input: "#rangeEnd"})]
});
