class Glider
  def lift
    puts "Rising"
  end

  def bank
    puts "Turning"
  end
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action)
    @glider.send(action)
  end
end

nomad = Nomad.new(Glider.new)
nomad.do("lift")
nomad.do("bank")
