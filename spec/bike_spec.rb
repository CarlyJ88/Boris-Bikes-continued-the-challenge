require 'bike'
describe Bike do
  it { is_expected.to respond_to :working?}

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

  it 'will not release a broken bike' do
    expect { subject.working? }.to raise_error 'Cannot release broken bike'
  end
end
