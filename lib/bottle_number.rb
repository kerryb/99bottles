class BottleNumber
  attr_reader :number

  def initialize number
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def quantity
    if number.zero?
      "no more"
    else
      number.to_s
    end
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end

  def action
    if number.zero?
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def successor
    if number.zero?
      99
    else
      number - 1
    end
  end
end
