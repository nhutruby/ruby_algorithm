=begin
Implement a last-in-first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (push, top, pop, and empty).

Implement the MyStack class:

void push(int x) Pushes element x to the top of the stack.
int pop() Removes the element on the top of the stack and returns it.
int top() Returns the element on the top of the stack.
boolean empty() Returns true if the stack is empty, false otherwise.
Notes:

You must use only standard operations of a queue, which means that only push to back, peek/pop from front, size and is empty operations are valid.
Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue) as long as you use only a queue's standard operations.
=end
class MyStack

=begin
    Initialize your data structure here.
=end
  def initialize()
    @stack=Array.new()
  end


=begin
    Push element x onto stack.
    :type x: Integer
    :rtype: Void
=end
  def push(x)
    @stack.push(x)
  end


=begin
    Removes the element on top of the stack and returns that element.
    :rtype: Integer
=end
  def pop()
    @stack.pop
  end


=begin
    Get the top element.
    :rtype: Integer
=end
  def top()
    @stack[-1]
  end


=begin
    Returns whether the stack is empty.
    :rtype: Boolean
=end
  def empty()
    @stack.length == 0
  end


end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()