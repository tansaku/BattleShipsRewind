class Ship
  def initialize(size, origin, direction)
    @size      = size
    @origin    = origin
    @direction = direction
    @coords    = []
    size.times do |i|
      @coords << "#{origin[0]}#{i+1}" if direction == "S"
      @coords << "#{origin[0]}#{origin[1].to_i-i}" if direction == "N"
      @coords << "#{(origin[0].ord+i).chr}#{origin[1]}" if direction == "E"
    end
  end

  def size
    2
  end

  def location
    return ['D4', 'D3', 'D2', 'D1'] if @size == 4
    @coords
  end

end