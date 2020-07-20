# frozen_string_literal: true

require 'Results.rb'

describe Results do
  describe "#format_grades" do
    context "when passed a string with only Green in it" do
      it "should return 'Green: 1'" do
        expect(subject.format_grades('Green')).to eq('Green: 1')
      end
    end
    it "should return 'Green: 2' when 'Green, Green' is passed" do
      expect(subject.format_grades('Green, Green')).to eq('Green: 2')
    end
    it "should return 'Green: 3' when 'Green, Green, Green' is passed" do
      expect(subject.format_grades('Green, Green, Green')).to eq('Green: 3')
    end
  end
end