require('rspec')
require('triangles')

describe (Triangle) do
  describe('#triangle?') do
    it('returns false if it is not a triangle') do
      test_triangle= Triangle.new(2, 2, 7)
      expect(test_triangle.triangle?()).to(eq(false))
    end
    it('returns true if it is a triangle') do
      test_triangle= Triangle.new(4, 3, 5)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end

  describe('#type') do
    it('returns equilateral if all sides are equal') do
      test_triangle= Triangle.new(5, 5, 5)
      expect(test_triangle.type()).to(eq('equilateral'))
    end
    it('returns isosceles if two sides are equal') do
      test_triangle= Triangle.new(2, 2, 3)
      expect(test_triangle.type()).to(eq('isosceles'))
    end
    it('returns scalene if no sides are equal') do
      test_triangle= Triangle.new(3, 4, 5)
      expect(test_triangle.type()).to(eq('scalene'))
    end

  end
end
