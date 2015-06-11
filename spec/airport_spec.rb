require 'airport'

## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do

  it 'should accept a plane once landed' do
    airport = Airport.new
    # plane = double(:plane)
    plane = Plane.new
    airport.land(plane)
    allow(plane).to receive(:flying=).with(false)
    expect(airport.count_planes).to eq(1)
  end

  it 'should release a plane' do
    airport = Airport.new
    # plane = double(:plane)
    plane = Plane.new
    # airport.land(plane)
    allow(plane).to receive(:flying=).with(false)
    airport.release(plane)
    expect(airport.count_planes).to eq(0)
  end
end
