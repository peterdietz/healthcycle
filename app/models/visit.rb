class Visit < ApplicationRecord
  belongs_to :caregiver
  belongs_to :patient

  def display_date
    return "#{self.scheduled_start.strftime("%m/%d/%Y @ %I:%M%p")} - #{self.scheduled_end.strftime("%I:%M%p")}"
  end

  def duration
    return ((self.scheduled_end - self.scheduled_start) / 1.minutes).to_i
  end
end
