=begin
Queue
Create a Queue with the two methods add and remove. Use your LinkedList class to keep track of the elements internally.
In this challenge, there's one more detail: If remove is called on the empty Queue, return -1.

Example

This is an example of a test case:

queue = Queue.new
queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1

The numbers come out in the order they went in, and the final remove returns a -1 since the queue is empty.
=end

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Queue
  @head = nil
  @tail = nil
  def add(number)
    # your code here
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      current = @tail
      @tail = new_node
      current.next_node = @tail
    end
  end
  
  def remove
    # your code here
    return -1 if @head.nil?
      
    current = @head
    after_head = @head.next_node
    @head = after_head
    current.value
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
