class Airport

  attr_reader :landed_planes

  def initialize
    @landed_planes = []
  end

  def land(plane)
    landed_planes << plane
    plane.flying=(false)
  end

  def count_planes
    landed_planes.count
  end

  # def landed_planes #attr_reader has replaced this method entirely
  #   @landed_planes
  # end
  def release(plane)

  end

end
