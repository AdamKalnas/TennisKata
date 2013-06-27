require 'rspec'
require_relative 'Tennis.rb'

describe Tennis, "#begining of game" do
  it "returns 0-0 for the score" do
    tennis = Tennis.new
    tennis.score.should eq "0-0"
  end
end
