require_relative "bike"

class DockingStation
  attr_reader :bike

  def release_bike 
    return fail "No bikes available" unless @bike
    @bike      
  end

  def dock(bike)
    fail "No spaces available" unless @bike == nil
    @bike = bike
  end

end