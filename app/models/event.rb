class Event < ApplicationRecord

  validates :start_date, presence: true
  validates :event_past_cannot_be_changed

  def event_past_cannot_be_changed
    if start_date < Date.today
      errors.add(:start_date, "Error: an event cannot be create or changed in the past")
    end
  end

  validates :duration, presence: true
  

  def duration
    if duration % 5 !=0 && duraction < 0
      errors.add(:duration, "Error: the duration is not available")
    else
    end
  end

  validates :title, length: {in: 5..140}
  validates :description, presence: true, length: {in:20..1000}
  validates :price, presence: true, length: {in:1..1000}
  validates :location, presence: true

end
