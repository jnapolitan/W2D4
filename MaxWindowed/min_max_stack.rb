class MinMaxStack
  
  def initialize
    @store = My_Stack.new
  end
  
  def peek
    @store.last
  end
  
  def size
    @store.length
  end
  
  def empty?
    @store.empty?
  end
  
  def pop
    @store.pop
  end
  
  def push(el)
    @store.push(el)
  end
  
  def max
    
  end
  
  def min
    
  end
end