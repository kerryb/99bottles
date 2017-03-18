require_relative "bottle_number"
require_relative "bottle_number_0"
require_relative "bottle_number_1"

class Bottles
  def song
    verses 99, 0
  end

  def verses starting, ending
    starting.downto(ending).map {|n| verse n}.join "\n"
  end

  def verse number
    bottle_number = bottle_number_for number
    next_bottle_number = bottle_number_for bottle_number.successor
    "#{bottle_number} of beer on the wall, ".capitalize +
      "#{bottle_number} of beer\n" +
      "#{bottle_number.action}, " +
      "#{next_bottle_number} of beer on the wall\n"
  end

  def bottle_number_for number
    case number
    when 0 then BottleNumber0
    when 1 then BottleNumber1
    else BottleNumber
    end.new number
  end
end
