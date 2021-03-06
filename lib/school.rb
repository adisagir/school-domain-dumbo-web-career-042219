# code here!
require 'pry'

class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    # if @roster[grade].nil?
    #   @roster[grade] = [name]
    # else
    #   @roster[grade] << name
    # end

    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade, name|
      @roster[grade] = name.sort
    end
    @roster
  end

end
