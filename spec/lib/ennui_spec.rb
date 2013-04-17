require 'spec_helper'
require 'pry'

describe Ennui do

  describe "#sometimes" do
    before do
      @true_count = 0

      100.times do
        @true_count += 1 if Ennui.sometimes
      end
    end

    it "is true sometimes" do
      @true_count.should be_within(10).of(50)
    end
  end

end
