require_relative "configure"
require_relative "graph"
require_relative "node"
require_relative "edge"
require_relative "assign_engine"

route_graph=Graph.new(SERVICE_AREAS,ROOT)
order_queue=[]
valid_labels=SERVICE_AREAS.map{|e|e[:label]}.join(", ")

assign_engine=AssignEngine.new(route_graph,TIME_LIMIT)
puts "################################################################"
puts "#                                                              #"
puts "# This is a pizza order program. input order label then click  #"
puts "# enter, the program will auto generate a delivery package     #"
puts "# that make driver able to deliver as many doubles and         #"
puts "# triples as possible                                          #"
puts "#                                                              #"
puts "################################################################"

loop do
  puts "please input order label"
  puts "input label should be in #{valid_labels}"
  order_label=gets.chomp
  break if order_label=="quit"
  loop do
  break if valid_labels.include? order_label
  puts "invalid label,please input again"
  order_label=gets.chomp
  end

  order_queue<<order_label

  assign_list,left=assign_engine.get_assign_list order_queue
  loop do
    break if assign_list.length==0
    puts "*********************************************"
    puts "next driver can go now with following orders:"
    puts assign_list.map(&:label).join(", ")
    puts "*********************************************"
    assign_list,left=assign_engine.get_assign_list left
  end
  order_queue=left
  puts "following orders are pending for delivery"
  puts order_queue.join(", ")
end

