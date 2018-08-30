class Stack
  def initialize
    @buffer = []
  end
  
  def push(value)
    @buffer.push(value)
    self
  end

  def length
    @buffer.length
  end

  def pop(value)
    @buffer.pop(value)
  end
end
