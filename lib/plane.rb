class Plane

  attr_reader :flying

  def initialize
    @flying = true
  end

  def flying=(status)
    @flying = status
  end

  # def flying  # replaced by attr_reader :flying
  #   @flying
  # end

  # def flying? initializing @flying? as true makes this definition not DRY
  #   true
  # end



  # def land

  # end

  # def landed
  #   true
  # end

end
