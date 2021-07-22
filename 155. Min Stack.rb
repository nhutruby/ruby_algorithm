class MinStack

=begin
	initialize your data structure here.
=end
  def initialize()
    @stack=Array.new()
  end


=begin
	:type x: Integer
	:rtype: Void
=end
  def push(x)
    @stack.push(x)
  end


=begin
	:rtype: Void
=end
  def pop()
    @stack.pop
  end


=begin
	:rtype: Integer
=end
  def top()
    @stack[-1]
  end


=begin
	:rtype: Integer
=end
  def get_min()
    @stack.min
  end


end