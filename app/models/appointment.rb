class Appointment < ActiveRecord::Base
   
	def Appointment.assignAppointment(medic_id, patient_id, begin_time, end_time )
		appointment = Appointment.new 
		appointment.begin_time = begin_time 
		appointment.end_time = end_time
		appointment.medic_id = medic_id
		appointment.patient_id = patient_id
		appointment.save
	end
	
	def Appointment.modifyAppointment(appointment_id, medic_id, begin_time, end_time)
		appointment = Appointment.where(:id => appointment_id).first
		appointment.medic_id =  medic_id
		appointment.begin_time = begin_time
		appointment.end_time =  end_time
		appointment.save
		
	end
	
	def Appointment.deletAppointment (appointment_id)
		appointment =  Appointment.where(:id => appointment_id).first
		appointment.delete
	end
	
end
