# frozen_string_literal: true

require 'Results.rb'

describe Results do
  describe "#format_grades" do
    context "Green Grades" do
      it "should return 'Green: 1' when 'Green' is passed" do
        expect(subject.format_grades('Green')).to eq('Green: 1')
      end

      it "should return 'Green: 2' when 'Green, Green' is passed" do
        expect(subject.format_grades('Green, Green')).to eq('Green: 2')
      end

      it "should return 'Green: 3' when 'Green, Green, Green' is passed" do
        expect(subject.format_grades('Green, Green, Green')).to eq('Green: 3')
      end
    end

    context "Amber Grades" do
      it "should return 'Amber: 1' when 'Amber' is passed" do
        expect(subject.format_grades('Amber')).to eq('Amber: 1')
      end

      it "should return 'Amber: 2' when 'Amber' is passed" do
        expect(subject.format_grades('Amber, Amber')).to eq('Amber: 2')
      end
    end

    context "Red Grades" do
      it "should return 'Red: 1' when 'Red is passed" do
        expect(subject.format_grades('Red')).to eq("Red: 1")
      end
    end

  end
end