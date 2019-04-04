require 'DockingStation'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    describe '#release_bike' do
      it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

    it { is_expected.to respond_to(:dock).with(1).argument }

    # included test to identify bike method
    it { is_expected.to respond_to(:bike) }

    # added unit test which expects the dock method to return the bike when passed an argument of bike
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

# it "raises" do
#     expect { subject.unavailable }.to raise_error("bike is unavailable")
# end
end
