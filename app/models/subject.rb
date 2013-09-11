class Subject < ActiveRecord::Base
	attr_accessible :subject_name, :description, :level_id
	belongs_to :level

	def to_s
	 	return " #{subject_name} "
	 end
end
	