class Order
  attr_accessor :id,:label,:num

  def initialize(id,label,num)
    @id=id
    @label= label
    @num=num
  end
end

