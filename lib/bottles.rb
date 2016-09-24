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
        No more bottles of beer on the wall, no more bottles of beer
        Go to the store and buy some more, 99 bottles of beer on the wall
      EOF
    when 1 then
      <<~EOF
        #{number} #{container number} of beer on the wall, #{number} #{container number} of beer
        Take #{pronoun number} down and pass it around, no more bottles of beer on the wall
      EOF
    else
      <<~EOF
        #{number} #{container number} of beer on the wall, #{number} #{container number} of beer
        Take #{pronoun number} down and pass it around, #{number - 1} #{container(number - 1)} of beer on the wall
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

  def pronoun number
    if number == 1
      "it"
    else
      "one"
    end
  end
end
