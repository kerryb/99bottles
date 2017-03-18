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
    bottle_number = BottleNumber1.for number
    "#{bottle_number} of beer on the wall, ".capitalize +
      "#{bottle_number} of beer\n" +
      "#{bottle_number.action}, " +
      "#{bottle_number.successor} of beer on the wall\n"
  end
end
