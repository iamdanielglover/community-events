class Location < ApplicationRecord
  has_many :events
  has_many :users, through: :events

  def events_by_date
    self.events.sort_by { |event| event.start_time.iso8601 }
  end

  def self.events_count
    locs = Location.all
    locs.sort_by { |loc| loc.events.count }.reverse
  end
end
