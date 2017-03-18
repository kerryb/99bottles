require "bottle_number"
require "bottle_number_0"
require "bottle_number_1"
require "bottle_number_6"

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
