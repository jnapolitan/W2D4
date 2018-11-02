require_relative "my_stack"

class StackQueue 
  
  def initialize
    @stack1 = MyStack.new
    @stack2 = MyStack.new
  end
  
  def size
    @stack1.length + @stack2.length
  end
  
  def empty?
    @stack1.empty? && @stack2.empty?
  end
  
  def enqueue(el)
    @stack1.push(el)
  end
  
  def dequeue
    queue if @stack2.empty?
    @stack2.pop
  end
  
  def queue
    @stack2 << @stack1.pop until @stack1.empty?
  end
  
end