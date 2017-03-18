class BottleNumber
  attr_reader :number

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
    number - 1
  end
end
