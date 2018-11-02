class MyQueue
  def initialize
    @store = []
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
  
  def dequeue
    @store.pop
  end
  
  def enqueue(el)
    @store.unshift(el)
  end
end