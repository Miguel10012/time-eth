# app/models/appointment.rb
class Appointment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :doctor
  
  # Validations
  validates :user_id, presence: true
  validates :doctor_id, presence: true
  validates :appointment_datetime, presence: true
  
  # Scopes
  scope :upcoming, -> { where('appointment_datetime >= ?', DateTime.now) }
  scope :past, -> { where('appointment_datetime < ?', DateTime.now) }
end
