class Bottles
  def song
    verses 99, 0
  end

  def verses starting, ending
    starting.downto(ending).map {|n| verse n}.join "\n"
  end

  def verse number
    case number
    when 0 then
      <<~EOF
        No more bottles of beer on the wall
        No more bottles of beer
        Go to the store and buy some more
        99 bottles of beer on the wall
      EOF
    when 1 then
      <<~EOF
        1 bottle of beer on the wall
        1 bottle of beer
        Take it down and pass it around
        No more bottles of beer on the wall
      EOF
    else
      <<~EOF
        #{number} #{container number} of beer on the wall
        #{number} #{container number} of beer
        Take one down and pass it around
        #{number - 1} #{container(number - 1)} of beer on the wall
      EOF
    end
  end

  private

  def container number
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end
end
