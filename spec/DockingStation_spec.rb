require 'DockingStation'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  
  describe '#release_bike' do
    it 'releases a working bike' do
      expect(subject.release_bike).to be_working
    end
  end
  
  it { is_expected.to respond_to(:dock).with(1).argument }
  
  it { is_expected.to respond_to(:bike) }
  
  it 'returns docked bikes' do
    expect(subject.bike).to eq @bike
  end
end
