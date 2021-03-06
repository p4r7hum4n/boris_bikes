require_relative "bike"

class DockingStation
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

 

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  
  def release_bike 
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "No spaces available" if full?
    @bikes.push(bike) 
    
  end


  private 

  attr_reader :bikes

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end