require 'rspec'
require_relative 'Tennis.rb'

describe Tennis, "#begining of game" do
  before (:each) do
    @tennis = Tennis.new
  end
  
  it "returns 0-0 for the score" do
    @tennis.score.should eq "0-0"
  end

  it "returns 15-0 when player 1 scores" do
    @tennis.point_scored(1)
    @tennis.score.should eq "15-0"
  end

end
