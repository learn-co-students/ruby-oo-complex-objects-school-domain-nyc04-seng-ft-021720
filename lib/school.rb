# code here!
class School
attr_accessor :roster 

def initialize(name)
    @name = name 
    @roster = {}
end 

def add_student(name, grade)
    if @roster[grade] 
        roster[grade].push(name)
    else
        @roster[grade] = []
        @roster[grade].push(name)
    end 
end 

def grade(grade)
    @roster[grade]
end 


def sort
    @roster.map do |x,y|
       @roster[x] =  y.sort
      end 
      
      @roster
end 

end 
