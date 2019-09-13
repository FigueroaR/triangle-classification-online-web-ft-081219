require 'pry'

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
    #binding.pry 
  end 

  
  def kind
    if @a && @b && @c == @a && @b && @c
      :equilateral
    elsif @a && @c == @a && @c || @a && @b == @a && @b || @b && @c == @b && @c || (@b != @a && @c)
      :isosceles
    elsif @a && @b && @c != @a && @b && @c
      :scalene
    else
      begin
        raise TriangleError
      end 
    end
    #binding.pry 
  end 
  
  class TriangleError < StandardError
  end
end
