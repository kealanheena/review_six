# frozen_string_literal: true

require 'Results.rb'

describe Results do
  describe "when passed a string with only Green in it" do
    it "should return 'Green: 1'" do
      expect(subject.format_grades('Green')).to eq('Green: 1')
    end
  end
end