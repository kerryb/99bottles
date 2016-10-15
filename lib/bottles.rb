require_relative "bottle_number"

class Bottles
  def song
    verses 99, 0
  end

  def verses starting, ending
    starting.downto(ending).map {|n| verse n}.join "\n"
  end

  def verse number
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " +
      "#{quantity(number)} #{container(number)} of beer\n" +
      "#{action(number)}, " +
      "#{quantity(successor number)} #{container(successor number)} of beer on the wall\n"
  end

  private

  def quantity number
    BottleNumber.new(number).quantity
  end

  def container number
    BottleNumber.new(number).container
  end

  def action number
    BottleNumber.new(number).action
  end

  def successor number
    BottleNumber.new(number).successor
  end
end
