class Event < ApplicationRecord

  validates :start_date, confirmation :true
  validates :event_past_cannot_be_changed,

  def event_past_cannot_be_changed
    if start_date < Date.today
      errors.add(:start_date, "Error: an event cannot be create or changed in the past")
    end
  end

  validates :duration, confirmation :true
  validates :duration, confirmation :true

  def duration
    if duration % 5 !=0 && duraction < 0
      errors.add(:duraction, "Error: the duration is not available")
    end
  end

  validates :title, length: {in: 5..140}
  validates :description, confirmation :true, length: {20..1000}
  validates :price, confirmation :true, length: {1..1000}
  validates :location, confirmation :true

end
