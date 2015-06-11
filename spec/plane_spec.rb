# require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# When we create a new plane, it should be "flying",
# thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should
# be "landed"
#
# When the plane takes of from the airport, it should be "flying" again
#
# Think about your implementation - does it allow a plane to be "flying" and landed?
# Are you testing that?

describe Plane do

  it 'should be flying' do
    plane = Plane.new
    expect(plane.flying).to be(true)
  end

  it 'should be landed' do
    plane = Plane.new
    airport = double(:airport)
    allow(airport).to receive(:land)
    airport.land(plane)
    expect(plane.flying).to be(false)
  end



end
