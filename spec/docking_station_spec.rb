require_relative "../lib/docking_station.rb"

describe DockingStation do
  describe 'release bike' do
    it 'responds to release bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end
  end

  describe 'gets bike' do 
    it 'gets a bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to respond_to(:working?)
    end
  end

  describe "dock bike" do
    it { is_expected.to respond_to(:dock).with(1).argument } 
  end  

  describe "bike in docking station"
    it { is_expected.to respond_to(:bike) }
end