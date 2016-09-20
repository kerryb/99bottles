require "minitest/autorun"
require "minitest/spec"
require_relative "../lib/bottles"

describe Bottles do
  before do
    @bottles = Bottles.new
  end

  describe "#verse" do
    it "outputs the first verse" do
      @bottles.verse(99).must_equal <<~EOF
        99 bottles of beer on the wall
        99 bottles of beer
        Take one down and pass it around
        98 bottles of beer
      EOF
    end
  end
end
