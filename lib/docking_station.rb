require_relative "bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end
  
  def release_bike 
    return fail "No bikes available" unless @bikes.count > 0
    @bikes.pop
  end

  def dock(bike)
    fail "No spaces available" unless @bikes.count < 20
    @bikes.push(bike)
  end

end