require 'rspec'
require './roman_numeral.rb'

describe RomanNumeralGenerator do
	subject do
		RomanNumeralGenerator.new
	end

	describe '.convert' do 
		it 'should change 1999 to MCMXCIX' do
			subject.convert(1999).should(eq("MCMXCIX"))
		end

		it "should change 20 to XX " do
			subject.convert(20).should==("XX")
		end

		it 'should change 19 to XIX' do
			subject.convert(19).should == 'XIX'
		end

		it 'should change 16 to XVI' do
			subject.convert(16).should == "XVI"
		end

		it 'should change 15 to XV' do
			subject.convert(15).should == 'XV'
		end

		it 'should change 14 to XIV' do
			subject.convert(14).should == 'XIV'
		end

		it 'should change 11 to XI' do
			subject.convert(11).should == 'XI'
		end

		it 'should change 10 to X' do
			subject.convert(10).should == 'X'
		end

		it 'should change 8 to VIII' do
			subject.convert(8).should == 'VIII'
		end

		it 'should change 3 to III' do
			subject.convert(3).should == 'III'
		end
	end
end