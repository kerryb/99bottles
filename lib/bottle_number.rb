class BottleNumber
  attr_reader :number

  def self.for number
    case number
    when 0 then BottleNumber0
    when 1 then BottleNumber1
    when 6 then BottleNumber6
    else BottleNumber
    end.new number
  end

  def initialize number
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def quantity
    number.to_s
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def successor
    BottleNumber.for(number - 1)
  end
end
