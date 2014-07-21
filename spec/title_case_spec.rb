require('rspec')
require('title_case')

describe('title_case') do
  it('takes a word and capitalizes the first letter') do
    title_case('dog').should(eql("Dog"))
  end

  it('takes a string with multiple words and capitalizes all of them') do
    title_case('the dog jumps').should(eql("The Dog Jumps"))
  end

  it('takes a string and capitalizes all significant words') do
    title_case("dog the bounty hunter of the shores by windy palace").should(eql("Dog the Bounty Hunter of the Shores by Windy Palace"))
  end

  it('capitalizes the first word even if it is on the exception list') do
    title_case("a black cAt crosses the sTReet").should(eql("A Black Cat Crosses the Street"))
  end
  it("capitalizes Scotch-Irish names properly") do
    title_case("mr mcgregor slays a colquun").should(eql("Mr McGregor Slays a Colquun"))
  end
end
