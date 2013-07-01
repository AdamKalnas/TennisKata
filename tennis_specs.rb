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

  it "returns 0-15 when player 2 scores" do
    @tennis.point_scored(2)
    @tennis.score.should eq "0-15"
  end
  
  it "returns 30-15 when player 1 scores twice and player 2 scores once" do
    @tennis.point_scored(1)
    @tennis.point_scored(1)
    @tennis.point_scored(2)
    @tennis.score.should eq "30-15"
  end
  
  it "returns 40-30 when player 1 scores three times and player 2 scores twice" do
    @tennis.point_scored(1)
    @tennis.point_scored(1)
    @tennis.point_scored(1)
    @tennis.point_scored(2)
    @tennis.point_scored(2)
    @tennis.score.should eq "40-30"
  end

  it "annouces player 1 wins when they score a point after having 40" do
    @tennis.point_scored(1)
    @tennis.point_scored(1)
    @tennis.point_scored(1)
    @tennis.point_scored(1)
    @tennis.score.should eq "Player 1 wins!"
  end

  it "annouces player 2 wins when they score a point after having 40" do
    @tennis.point_scored(2)
    @tennis.point_scored(2)
    @tennis.point_scored(2)
    @tennis.point_scored(2)
    @tennis.score.should eq "Player 2 wins!"
  end

  it "goes into duece when both players have 40 points" do
    setup_duece
    @tennis.score.should eq('Duece') 
  end

  def setup_duece
    @tennis.point_scored(1)
    @tennis.point_scored(1)
    @tennis.point_scored(1)
    @tennis.point_scored(2)
    @tennis.point_scored(2)
    @tennis.point_scored(2)
  end
end

