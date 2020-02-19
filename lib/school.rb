# code here!
require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(grade)
        if @roster[grade]
            @roster[grade]
        end
    end

    def sort
        @roster.map{|k, v| [k, v.sort]}.sort.to_h
    end
end

