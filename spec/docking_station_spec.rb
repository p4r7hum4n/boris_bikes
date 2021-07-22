require_relative "../lib/docking_station.rb"
require_relative "../lib/bike.rb"

describe DockingStation do
  describe 'release bike' do
    it 'responds to release bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eql bike
    end
  
    it "raises an error when there are no bikes available" do
      expect{subject.release_bike}.to raise_error("No bikes available")
    end
  end

=begin
  describe 'gets bike' do 
    it 'gets a bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to respond_to(:working?)
    end
  end
=end 
  describe "dock bike" do
    it { is_expected.to respond_to(:dock).with(1).argument } 

    it "raises an error when there are 20 bikes docks" do
      docking_station = DockingStation.new
      docking_station.capacity.times { docking_station.dock Bike.new }
      expect{docking_station.dock(Bike.new)}.to raise_error("No spaces available")
     
    end
  end  

  describe "bike in docking station" do
    it { is_expected.to respond_to(DockingStation::bikes) }
  end

  describe "docks a bike" do
    it 'dock a bike new' do
      bike = Bike.new
      (subject.dock(bike)).should be_kind_of(Array) 
    end
  end

  describe "#intialize" do
    it "sets the @capacity variable" do

      ds = DockingStation.new(1)
      expect(ds.capacity).to eq(1)
    end

    it "@capacity defaults to 20" do
      ds = DockingStation.new
      expect(ds.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end
    
  end
  
end