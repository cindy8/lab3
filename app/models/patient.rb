class Patient < ActiveRecord::Base
	def Patient.showAppointments(patient_id)
	    primera_cita = Appointment.where(:id => patient_id).first
	    puts "hora: #{primera_cita.begin_time}"
    end
end
