module Prongs
  module Utils
    module Duration
      require 'active_support/all'

      UTC = TZInfo::Timezone.get("UTC")

      def self.hms_format(d)
        total_seconds = (d / 1.second).to_f.round
        seconds = total_seconds % 60
        minutes = (total_seconds/60) % 60
        hours = (total_seconds/3600)
        format("%02d:%02d:%02d", hours, minutes, seconds)
      end

      def self.duration_seconds(d)
        total_seconds = (d / 1.second).to_f.round
      end

      def self.duration_hours(d)
        total_seconds = (d / 3600.second).to_f.round(2)
      end

      def self.duration_days_floor(d)
        total_seconds = (d / (24*3600).second).to_f.floor
      end

      def self.human_dh_format(d)
        d = d/1.second
        dur_days = duration_days_floor(d)
        dur_hours = duration_hours(d - dur_days.days)
        dur_str = [
          dur_days.zero? ? nil : "#{dur_days} day".pluralize(dur_days),
          dur_days.zero? ? nil : "and",
          "#{dur_hours} hours"
        ].join(" ")
      end
    end
  end
end
