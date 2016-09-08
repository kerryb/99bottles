class Bottles
  def song
    verses 99, 0
  end

  def verses first, last
    first.downto(last).map {|n| verse n}.join("\n")
  end

  def verse number
    <<~EOF
      #{what_we_have(number).capitalize} on the wall, #{what_we_have number}.
      #{what_we_do number}, #{what_we_have next_number(number)} on the wall.
    EOF
  end

  private

  def what_we_have number
    return "no more bottles of beer" if number.zero?
    "#{number} bottle#{number > 1 ? "s" : ""} of beer"
  end

  def what_we_do number
    case number
    when 0 then "Go to the store and buy some more"
    when 1 then "Take it down and pass it around"
    else "Take one down and pass it around"
    end
  end

  def next_number number
    (number - 1) % 100
  end
end
