/* Linked List  

Implement the following two methods in your own LinkedList class. You should start with your code from yesterday:  

add_at(index, item) - Add an item to a specific location in the list. The index will be a positive integer that represents the index where you should insert item. Zero is the position of the first element of the list. 
remove(index) - Remove an item from a specific location in the List.  

You should also implement a private helper method get_node(index) to return the Node at a specific index.  

You should have already completed these two methods in the previous challenge:  
add(number) - Add number to the end of your LinkedList. 
get(index) - Get the number located at index.  

Example  

This is an example of a test case:  

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
puts list.get(2)
# => 11

puts list.get(3)
# => 5

The add operations create the list: [13, 3, 11, 5]. The get operation, gets the numbers located at position 2 and 3. */


class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    # your code here
   key = Node.new(number)
   if @head.nil?
     @head = key
     @tail = key
   else
     @tail.next_node = key
     @tail = key
   end
  end

  def get(index)
    # your code here
    node=@head 
    while index > 0 && node
      node=node.next_node
      index -= 1
    end 
    node.value
  end
  
  def add_at(index,item)
    new_node = Node.new(item)
    if index > 0
      key_before = get_node(index-1)
      key_after = key_before.next_node
      key_before.next_node = new_node
      new_node.next_node = key_after
    else
      current = @head
      @head = new_node
      @head.next_node = current
    end
  end
  
  def get_node(index)
   current=@head 
   i = 0
   while i < index 
     current=current.next_node unless current.next_node.nil?
     i += 1
   end 
   current 
  end
 
 def remove(index)
  if index > 0
    key_before = get_node(index - 1)
    key_after = key_before.next_node.next_node
    key_before.next_node = key_after
  else
    @head = @head.next_node
  end
 end
end


list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
