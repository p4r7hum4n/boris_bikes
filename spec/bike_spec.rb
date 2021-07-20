require_relative "../lib/bike.rb"
#BIKE
describe Bike do
  describe 'working' do
    it 'does method work on bike' do
      bike = Bike.new
      expect(bike).to respond_to(:working?)
    end

    it "is bike working?" do
      bike = Bike.new
      expect(bike.working?).to eql(true)
    end  
  end
end