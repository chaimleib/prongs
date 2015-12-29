# prongs

A Ruby gem of core extensions and extra utilities.

## Features

* `core_extensions`
    * `Numeric.clamp(low, high)`: clamp a number to the given range
* `utils`
    * `time.rb`
        * `hms_format(d)`: format an ActiveSupport Duration as hours:minutes:seconds
        * `duration_seconds(d)`: format an AS Duration as seconds, rounded to nearest int
        * `duration_hours(d)`: format an ASD as hours, to two decimal places
        * `duration_days_floor(d)`: how many days are in the given ASD
        * `human_dh_format(d)`: humanized duration string, like "2 days and 3.75 hours" or "1.25 hours"

## License
`prongs` is licensed under the MIT License.
