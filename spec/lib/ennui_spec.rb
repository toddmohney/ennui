require 'spec_helper'
require 'pry'
require 'ennui'

include Ennui

describe Ennui do
  describe "#sometimes?" do
    before do
      @truthiness_score = 0

      100.times do
        @truthiness_score += 1 if sometimes?
      end

      puts "Truthiness score: #{@truthiness_score}"
    end

    it "is true about %50 of the time" do
      score = truthiness_score(1000, Proc.new { sometimes? })
      score.should be_within(0.10).of(0.50)
    end
  end

  describe "#who_cares?" do
    it "is true about %25 of the time" do
      score = truthiness_score(1000, Proc.new { who_cares? })
      score.should be_within(0.10).of(0.25)
    end
  end

  def truthiness_score(iterations, proc)
    truthiness = 0
    iterations.times do
      truthiness += 1 if proc.call
    end

    score = truthiness.to_f / iterations.to_f
    puts "Truthiness score: #{score}"
    score
  end

end
