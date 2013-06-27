require 'rspec'
require_relative 'Tennis.rb'

describe Tennis, "#begining of game" do
  before (:each) do
    @Tenis = Tennis.new
  end
  
  it "returns 0-0 for the score" do
    @Tenis.score.should eq "0-0"
  end
end
