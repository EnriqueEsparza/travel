require('rspec')
require('travel')

describe("#description") do
  it("lets you give it a description") do
    test_travel = Travel.new("San Francisco")
    expect(test_travel.description()).to(eq("San Francisco"))
  end
end
