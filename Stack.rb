=begin
Stack
Create a Stack with two methods push and pop. Use your LinkedList class to keep track of the elements internally.

Example

This is an example of a test case:

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
=end


class Node
 attr_accessor :value, :next_node
 def initialize(value, next_node=nil)
   @value = value
   @next_node = next_node
 end
end

class Stack
  @head = nil
  @tail = nil
  def push(number)
    # your code here
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      current = @head
      @head = new_node
      @head.next_node = current
    end
  end
  
  def pop
    # your code here
    if @head.nil?
      false
    else
      current = @head
      @head = @head.next_node
    end
    current.value
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
