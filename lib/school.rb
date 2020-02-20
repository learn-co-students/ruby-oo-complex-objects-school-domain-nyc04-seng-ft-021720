class School
    attr_accessor :roster

def initialize(roster)
    @roster = {}
end

def add_student(student, grade)
(@roster[grade] ||= []) << student
end

def grade(grade)
@roster.select { |grd, stud| grd == grade}
@roster[grade]
end

def sort
    sorted_hash = {}
    @roster.each do |grd, stud| 
    sorted_hash[grd] = stud.sort 
    end 
    sorted_hash
    end 
end