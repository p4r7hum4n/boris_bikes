require_relative "../lib/docking_station.rb"

RSpec.describe DockingStation do
  describe 'release bike' do
    it 'responds to release bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end
  end
end