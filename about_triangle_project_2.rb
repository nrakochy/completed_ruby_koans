require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require './triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def triangle(side1, side2, side3)
    
    raise TriangleError if (side1 || side2 || side3 <= 0) || (side1 + side2 <= side3)
    
    if side1 == side2 && side1 == side3
      :equilateral
    elsif (side1 != side2) && (side2 != side3) && (side1 != side3)
      :scalene
    else
      :isosceles
    end
  end
  
  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end
    assert_raise(TriangleError) do triangle(3, 4, -5) end
    assert_raise(TriangleError) do triangle(1, 1, 3) end
    assert_raise(TriangleError) do triangle(2, 4, 2) end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
  end
end
