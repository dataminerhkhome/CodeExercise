class AssignEngine

  attr_accessor :distance_bound
  attr_accessor :graph
  def initialize graph, time_limit
    @sum_distance=0
    @distance_limit=time_limit*600

    @graph=graph

  end

  def assign queue_left,assign_list
    return if queue_left.length==0
    current_node=assign_list.last

    next_node=current_node.nearest queue_left

    @sum_distance=@sum_distance + (current_node.distance_to next_node)
    return if @sum_distance>@distance_limit
    node_count=queue_left.count(next_node.label)
    node_count.times {assign_list<<next_node}
    #assign_list<<next_node

    queue_left.delete(next_node.label)
    assign queue_left,assign_list

  end
  


  def get_assign_list order_queue
    @sum_distance=0
    assign_list=[]
    order_queue_left=order_queue.clone
    first_order=graph.root.nearest order_queue
      node_count=order_queue_left.count(first_order.label)
    node_count.times {assign_list<<first_order}
   
    order_queue_left.delete(first_order.label)
    assign order_queue_left,assign_list
    #puts "total distance #{@sum_distance}"

    if order_queue_left.length>0

    return assign_list,order_queue_left
    else
    return [],order_queue
    end
  end



end