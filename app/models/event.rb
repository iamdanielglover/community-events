class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  belongs_to :location, optional: true
  belongs_to :category, optional: true

  def display_start
    self.start_time.strftime("%B %e, %Y at %H:%M")
  end

  def display_end
    self.end_time.strftime("%B %e, %Y at %H:%M")
  end

end
