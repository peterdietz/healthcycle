class Visit < ApplicationRecord
  belongs_to :caregiver
  belongs_to :patient

  def display_date
    return "#{self.scheduled_start.strftime("%m/%d/%Y @ %I:%M%p")} - #{self.scheduled_end.strftime("%I:%M%p")}"
  end
end
