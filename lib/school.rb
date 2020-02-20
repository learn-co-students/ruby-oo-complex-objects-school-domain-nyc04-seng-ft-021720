# code here!
require 'pry'
class School

  attr_accessor :name, :grade
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    # roster[grade] << name
    if !roster[grade]
      roster[grade] = []
    end
      roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # @roster.map { |key, value|
    #   [key, value.sort]
    # }.to_h
    @roster.each { |key, value|
      @roster[key] = value.sort
    }
    @roster
  end
end

