class Temperature
  def initialize(temperature)
    @temp   = 0
    @key    = ""
  temperature.select do |key, value|
    @key    = key
    @temp   = value
    end
  end

  def in_celsius(cel)
    @key    = :c
    @temp   = cel
  end

  def in_fahrenheit(far)
    @key    = :f
    @temp   = far
  end

  def self.in_celsius(cel)
    Temperature.new({c: cel})
  end

  def self.in_fahrenheit(far)
    Temperature.new({f: far})
  end

  def to_fahrenheit
    if @key == :c
    ((@temp * (9.0/5.0)) + 32)
    else
    @temp
    end
  end

  def to_celsius
    if @key == :f
    ((@temp - 32) * (5.0/9.0))
    else
    @temp
    end
  end

end


class Fahrenheit < Temperature

end
class Celsius < Temperature

end
