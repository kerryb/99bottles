class Bottles
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
    when 2 then
      <<~EOF
        2 bottles of beer on the wall
        2 bottles of beer
        Take one down and pass it around
        1 bottle of beer on the wall
      EOF
    else
      <<~EOF
        #{number} bottles of beer on the wall
        #{number} bottles of beer
        Take one down and pass it around
        #{number - 1} bottles of beer on the wall
      EOF
    end
  end
end
