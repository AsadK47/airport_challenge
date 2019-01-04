require 'plane'

describe Plane do
  subject(:plane) { described_class.new }
  let(:airport) { double :airport }

  describe '#takeoff' do
    it { is_expected.to respond_to :takeoff }

    it 'raises an error if already flying' do
      expect { plane.takeoff }.to raise_error 'Plane cannot takeoff: plane already flying'
    end
  end

  describe '#land' do
    it 'stores the airport the plane landed at' do
      plane.land(airport)
      expect(plane.airport).to eq airport
    end

    it 'raises an error if already landed' do
      plane.land(airport)
      expect { plane.land(airport) }.to raise_error 'Plane cannot land: plane is already landed'
    end
  end

  describe '#airport' do
    it { is_expected.to respond_to :airport }

    it 'raises an error if already flying' do
      expect { plane.airport }.to raise_error 'Plane cannot be at an airport: plane is already flying'
    end
  end
end
