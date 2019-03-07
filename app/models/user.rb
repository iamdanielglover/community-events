class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  has_many :locations, through: :events
  has_secure_password
  validates :username, presence: true
  validates_uniqueness_of :username

  def active_events
    self.events.select {|event| event.end_time > DateTime.now}
  end

  def expired_events
    self.events.select {|event| event.end_time < DateTime.now}
  end

end
