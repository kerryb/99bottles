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
        98 bottles of beer on the wall
      EOF
    end

    it "outputs another verse" do
      @bottles.verse(3).must_equal <<~EOF
        3 bottles of beer on the wall
        3 bottles of beer
        Take one down and pass it around
        2 bottles of beer on the wall
      EOF
    end

    it "outputs the antepenultimate verse" do
      @bottles.verse(2).must_equal <<~EOF
        2 bottles of beer on the wall
        2 bottles of beer
        Take one down and pass it around
        1 bottle of beer on the wall
      EOF
    end

    it "outputs the penultimate verse" do
      @bottles.verse(1).must_equal <<~EOF
        1 bottle of beer on the wall
        1 bottle of beer
        Take it down and pass it around
        No more bottles of beer on the wall
      EOF
    end

    it "outputs the last verse" do
      @bottles.verse(0).must_equal <<~EOF
        No more bottles of beer on the wall
        No more bottles of beer
        Go to the store and buy some more
        99 bottles of beer on the wall
      EOF
    end
  end
end
