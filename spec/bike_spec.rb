require_relative "../lib/bike.rb"
#BIKE
RSpec.describe Bike do
  describe 'bike working' do
    it 'is bike working?' do
      bike = Bike.new
      expect(bike).to respond_to(:working?)
    end
  end
end