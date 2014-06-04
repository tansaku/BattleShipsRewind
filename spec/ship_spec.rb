require 'ship'
describe Ship do

  it 'should have a size' do
    ship = Ship.new(2, "A1", 'E')
    expect(ship.size).to eq 2
  end

  context 'can be placed ' do

    it 'at a specified position' do
      ship = Ship.new(2, "A1", 'S')
      expect(ship.location).to eq ['A1', 'A2']
    end

    it 'at a specified position with size 3' do
      ship = Ship.new(3, "A1", 'S')
      expect(ship.location).to eq ['A1', 'A2', 'A3']
    end

    it 'at a specified position horizontally' do
      ship = Ship.new(2, "A1", 'E')
      expect(ship.location).to eq ['A1', 'B1']
    end

    it 'at a specified position horizontally with size 3' do
      ship = Ship.new(3, "A1", 'E')
      expect(ship.location).to eq ['A1', 'B1', 'C1']
    end 

    it 'at a specified position horizontally with size 3' do
      ship = Ship.new(3, "D4", 'E')
      expect(ship.location).to eq ['D4', 'E4', 'F4']
    end

    it 'at a specified position inverted with size 4' do
      ship = Ship.new(4, "D4", 'N')
      expect(ship.location).to eq ['D4', 'D3', 'D2', 'D1']
    end

    it 'at a specified position inverted with size 3' do
      ship = Ship.new(3, "H5", 'N')
      expect(ship.location).to eq ['H5', 'H4', 'H3']
    end
  end

end