require 'rspec'
require './rectangle.rb'

describe Rectangle do

  subject do
    Rectangle.new(4, 2)
  end

  describe '.perimeter' do

    it 'should calculate perimeter' do
      subject.perimeter.should == 12
    end

    it 'should calculate perimeter' do
      rect = Rectangle.new(0, 0)
      rect.perimeter.should == 0
    end

  end

  describe '.area' do

    it 'should calculate area' do
      subject.area.should == 8
    end

  end

end























# describe Rectangle do
# 	subject do 
# 		Rectangle.new(5, 7)
# 	end

#   it "has a width and height" do
#     expect(subject.width).to eq 5
#     expect(subject.height).to eq 7
#   end

#   describe ".area" do

#   	it "should return the area" do
  		
#   	end
  	
#   end

# end