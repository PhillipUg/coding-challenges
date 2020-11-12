=begin

Lists  

Create your own LinkedList  class for storing integers which should include two methods:  
add(number) - Add a new Node to the end of the list with a value of number. Nothing needs to be returned. 
get(index) - Return the value of the Node at position `index` in the List.   

Example  

This is an example of a test case:  

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5


The 2 add operations create the list: [3, 5]. 
The get operation, gets the number located at position 1.

=end


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
   value = @tail
   @tail = Node.new(number)
   value.next_node = @tail unless value.nil?
   @head = @tail if @head.nil?
  end

  def get(index)
    # your code here
    current=@head 
    index.times do 
      current=current.next_node 
      end 
      return current.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5
