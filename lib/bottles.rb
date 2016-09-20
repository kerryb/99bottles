class Bottles
  def verse number
    if number == 2
      <<~EOF
        2 bottles of beer on the wall
        2 bottles of beer
        Take one down and pass it around
        1 bottle of beer
      EOF
    else
      <<~EOF
        #{number} bottles of beer on the wall
        #{number} bottles of beer
        Take one down and pass it around
        #{number - 1} bottles of beer
      EOF
    end
  end
end
