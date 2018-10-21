class Visit < ApplicationRecord
  belongs_to :caregiver
  belongs_to :patient
end
