class Caregiver < ApplicationRecord
  has_many :visits

  def display_name
    return "#{self.firstname} #{self.lastname}"
  end
end
