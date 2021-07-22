require_relative "bike"

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20


  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  private :full?

  def empty?
    @bikes.empty?
  end

  private :empty?

  def initialize
    @bikes = []
  end
  
  def release_bike 
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "No spaces available" if full?
    @bikes.push(bike) 
    
  end



end