require 'capybara/rspec'
require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# Given 6 planes, each plane must land.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have status "landed"
# Once all planes are in the air again, check that they have status "flying!"

feature 'Grand Finale' do

  scenario 'all planes can land' do
    airport = Airport.new
    plane = Plane.new
    airport.land(plane)
    expect(airport.count_planes).to eq(1)
    expect(plane.flying).to be(false)
  end

  scenario 'all planes can take off' do
    airport = Airport.new
    plane = Plane.new
    airport.release(plane)
    expect(airport.count_planes).to eq(0)
    expect(plane.flying).to be(true)
  end
end
