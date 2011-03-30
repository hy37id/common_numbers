require 'spec_helper'
require 'rspec'

describe "Pesel"  do

  it "should be valid"do
    valid_numbers = %w[75090107377]
    valid_numbers.each do |n|
        pesel = MagickNumbers::Pesel.new(n)
        pesel.should be_valid
    end
  end

  it "should be invalid" do
    invalid_numbers = %w[44051401358]
    invalid_numbers.each do |n|
      pesel = MagickNumbers::Pesel.new(n)
      pesel.should_not be_valid
    end
  end
end