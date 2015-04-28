require('rspec')
require('travel')

describe(Travel) do
  before() do
    Travel.clear()
end

  describe("#description") do
    it("lets you give it a description") do
      test_travel = Travel.new("San Francisco")
      expect(test_travel.description()).to(eq("San Francisco"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Travel.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a destination to the array of saved travel locations") do
      test_travel = Travel.new("Chicago")
      test_travel.save()
      expect(Travel.all()).to(eq([test_travel]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved destinations") do
      Travel.new("Chicago").save()
      Travel.clear()
      expect(Travel.all()).to(eq([]))
    end
  end
end
