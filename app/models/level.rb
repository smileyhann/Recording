class Level < ActiveRecord::Base
	attr_accessible :level_name, :description
	has_many :students

	def to_s
	 	return " #{level_name} "
	 end
end
	