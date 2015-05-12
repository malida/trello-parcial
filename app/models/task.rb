class Task < ActiveRecord::Base
	belongs_to :user, class_name: "User", foreign_key: "user_id"
	belongs_to :responsable, class_name: "User", foreign_key: "responsable_id"
  	

	validates :hours, numericality: { only_integer: true }
	validates_presence_of :title
	#Fechas
  	def self.by_person(user_id)
    	where("user_id = :person_id OR responsable_id = :person_id", person_id: responsable_id)
  	end 

end
