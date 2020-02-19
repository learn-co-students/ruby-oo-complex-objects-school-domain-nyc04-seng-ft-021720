# code here!

class School
	attr_accessor :roster
	attr_reader :school_name

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def add_student(student_name, student_grade)
		(@roster[student_grade] ||= [] ).push(student_name)
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		key_list = @roster.keys
		key_list.each do |grade|
			@roster[grade].sort!
		end
		@roster
	end
end
school = School.new("Bayside High School")
