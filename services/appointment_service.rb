class AppointmentService
  def initialize(appointment)
    @appointment = appointment
  end

  def schedule(appointment_params)
    @appointment.assign_attributes(appointment_params)
    if @appointment.save
      send_confirmation_email
      return { success: true, appointment: @appointment }
    else
      return { success: false, errors: @appointment.errors.full_messages }
    end
  end

  def reschedule(appointment_params)
    if @appointment.update(appointment_params)
      return { success: true, appointment: @appointment }
    else
      return { success: false, errors: @appointment.errors.full_messages }
    end
  end

  def cancel
    @appointment.destroy
    send_cancellation_email
    { success: true }
  end

  private

  def send_confirmation_email
    # Code to send appointment confirmation email
  end

  def send_cancellation_email
    # Code to send appointment cancellation email
  end
end
