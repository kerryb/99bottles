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

    it "outputs the antepenultimate verse" do
      @bottles.verse(3).must_equal <<~EOF
        3 bottles of beer on the wall
        3 bottles of beer
        Take one down and pass it around
        2 bottles of beer
      EOF
    end

    it "outputs the penultimate verse" do
      @bottles.verse(2).must_equal <<~EOF
        2 bottles of beer on the wall
        2 bottles of beer
        Take one down and pass it around
        1 bottle of beer
      EOF
    end
  end
end
