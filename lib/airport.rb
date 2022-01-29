class Airport
  DEFAULT_CAPACITY = 5

  def initialize
    @planes = []
  end

  def land(plane)
    raise "The airport has no capacity." if full?
    plane.flying = false
    @planes << plane
    "Landed successfully"
  end

  def take_off
    plane = @planes.pop
    plane.flying = true
    return plane
  end

  private
  
  def full?
    @planes.count >= DEFAULT_CAPACITY
  end

end
