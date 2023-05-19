class AppointmentMailer < ApplicationMailer
  default from: 'your_email@example.com'

  def appointment_confirmation(appointment)
    @appointment = appointment
    mail(to: @appointment.email, subject: 'Appointment Confirmation')
  end

  def appointment_reminder(appointment)
    @appointment = appointment
    mail(to: @appointment.email, subject: 'Appointment Reminder')
  end
end
