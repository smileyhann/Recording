class Grade < ActiveRecord::Base
	attr_accessible :grade, :students_id, :subjects_id
	has_many :subjects
	def to_s
	 	return " #{grade} "
	 end
end

