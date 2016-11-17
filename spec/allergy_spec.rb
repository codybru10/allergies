require('rspec')
require('allergy')
require('pry')

describe("Fixnum#allergy") do
  it("takes a single number and outputs a single result") do
    expect((1).allergy()).to(eq("eggs"))
  end
  it("takes a single number and outputs a result with multiple words") do
    expect((37).allergy()).to(eq("chocolate shellfish eggs"))
  end
end
