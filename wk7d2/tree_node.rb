require 'test/unit'

#lib/
class TreeNode
	attr_accessor :value

	def initialize(value)
		@value = value
	end

end

#test/
class TreeNodeTest < Test::Unit::TestCase
	def test_can_initialize_with_a_value
		node = TreeNode.new(10)
	end


end