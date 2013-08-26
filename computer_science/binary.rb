require 'rspec'

class Binary

	def self.binary_to_decimal(binary)
		array = binary.reverse.split("")
		b = []
		array.each_with_index do |num, i|
			b << num.to_i * (2 ** i)
		end
		b.reduce :+
	end

	def self.decimal_to_binary(number)
		if(number == 0) then 0 end
		result = ""
		while(number != 0)
			result += (number % 2).to_s
			number = number / 2
		end
		result.reverse
	end

	def self.decimal_to_hexidecimal(decimal)
		a = decimal.split("")
		h = { "a" => "1010" }
		r = ""
		a.each do |n|
			r += h[n]
		end
		r
	end
end

describe Binary do

	describe '.binary_to_decimal' do

		it 'should convert 0000 to 0' do
			Binary.binary_to_decimal("0000").should == 0
		end

		it 'should convert 0001 to 1' do
			Binary.binary_to_decimal("0001").should == 1
		end

		it 'should convert 0010 to 2' do
			Binary.binary_to_decimal("0010").should == 2
		end

		it 'should convert 0011 to 3' do
			Binary.binary_to_decimal("0011").should == 3
		end

	end

	describe '.decimal_to_binary' do

		it 'should convert' do
			Binary.decimal_to_binary(4).should == "100"
		end

		it 'should convert' do
			Binary.decimal_to_binary(1).should == "1"
		end

		it 'should convert' do
			Binary.decimal_to_binary(6).should == "110"
		end

		it 'should convert' do
			Binary.decimal_to_binary(12).should == "1100"
		end

		it 'should convert' do
			Binary.decimal_to_binary(20).should == "10100"
		end

	end

end
