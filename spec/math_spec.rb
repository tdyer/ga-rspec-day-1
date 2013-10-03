require 'spec_helper'
require_relative '../lib/math'

describe '#square' do

  it "should have a method called square" do
    expect(method(:square))
  end 
  it "should have one argument called x" do
    parameters = method(:square).parameters
    expect(parameters[0]).to include(:x)
    expect(parameters[0]).to include(:req)
    expect(parameters.length).to eq 1
  end	

  it "should square numbers" do
    expect(square(0.5)).to eq 0.25
    expect(square(4)).to eq 16
  end 


  it "should take the correct params" do
    expect do
      square("cat")
    end.to raise_error(NoMethodError)
    expect do 
      square(true)
    end.to raise_error(NoMethodError)
  end
end











