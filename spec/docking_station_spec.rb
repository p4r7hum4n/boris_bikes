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
  end  

  describe "bike in docking station" do
    it { is_expected.to respond_to(:bike) }
  end

  describe "docks a bike" do
    it 'dock a bike new' do
      bike = Bike.new
      expect(subject.dock(bike)).to eql (bike)
    end
  end

  describe 'return docked bike' do
    it 'return docked bikes' do
      bike = Bike.new
      expect(subject.bike).to eql (@bike)
    end
  end
end