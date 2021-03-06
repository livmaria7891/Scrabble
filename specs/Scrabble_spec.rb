require_relative '../lib/Scrabble.rb'
require_relative 'spec_helper.rb'

describe "Testing Scrabble" do

  it "It must raise an ArgumentError if given a Fixnum" do
    expect (proc { Scrabble::Scoring.start_word(11)} ).must_raise ArgumentError
  end

  # it "It must raise an ArgumentError if LETTER_SCORES[char] is not a Fixnum" do
  #   expect (proc { Scrabble::Scoring.score("hellO")} ).must_raise ArgumentError
  # end

  it "Testing to remove case sensitivity" do
    expect(Scrabble::Scoring.start_word("HeLLo")  ).must_equal("HELLO")
  end

  it "Testing to make sure score is correct" do
    expect(Scrabble::Scoring.score("potato")  ).must_equal(8)
  end

  it "Testing to make sure 7 tiles gets an extra 50 points" do
    expect(Scrabble::Scoring.score("majesty")  ).must_equal(69)
  end

end
