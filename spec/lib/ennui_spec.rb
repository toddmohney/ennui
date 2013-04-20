require 'spec_helper'
require 'pry'
require 'ennui'

include Ennui

class EnnuiTest
  include Ennui
end

describe Ennui do
  let(:ennui_test) { EnnuiTest.new }

  describe "#sometimes?" do
    it "is true about %50 of the time" do
      score = truthiness_score(1000, Proc.new { sometimes? })
      score.should be_within(0.10).of(0.50)
    end
  end

  describe "#sometimes" do
    it "calls sometimes?" do
      Ennui.should_receive(:sometimes?)
      Ennui.sometimes
    end

    context "when sometimes? is true" do
      before do
        Ennui.stub(:sometimes?) { true }
      end

      it "yields to the block" do
        expect { |block| Ennui.sometimes(&block) }.to yield_control
      end
    end

    context "when sometimes? is false" do
      before do
        Ennui.stub(:sometimes?) { false }
      end

      it "does not yield to the block" do
        expect { |block| Ennui.sometimes(&block) }.not_to yield_control
      end
    end
  end

  describe "#who_cares?" do
    it "is true about %25 of the time" do
      score = truthiness_score(1000, Proc.new { who_cares? })
      score.should be_within(0.10).of(0.25)
    end
  end

  describe "#whatever" do
    it "is an alias for sometimes" do
      Ennui.should_receive(:sometimes)
      Ennui.whatever
    end
  end

  describe "#maybe" do
    it "is an alias for sometimes" do
      Ennui.should_receive(:sometimes)
      Ennui.maybe
    end
  end

end
