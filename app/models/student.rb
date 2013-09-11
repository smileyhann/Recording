class Student < ActiveRecord::Base
	attr_accessible :name, :age, :address, :birthday, :level_id
	has_many :grades

	def to_s
	 	return " #{name} "
	 end
end
	