require_relative "configure"
require_relative "graph"
require_relative "node"
require_relative "edge"
require_relative "assign_engine"

graph=Graph.new(SERVICE_AREAS,ROOT)

leagal_labels=SERVICE_AREAS.map{|e|e[:label]}.join(", ")
graph.nodes.each do |to|
  if to!=graph.root
  d=graph.root.distance_to to
  puts "Distance to #{to.name}:  #{d}"
  end


end

first=graph.root.nearest ["A1","D1","D2","A2","B1","B1","C1"]
 puts  "in given order the nearest place is "+first.to_s

 order_queue1=["A1","D1","D2"]
 order_queue2=["A1","D1","D2","A2"]

assign_engine=AssignEngine.new(graph,TIME_LIMIT)
assign_list,left=assign_engine.get_assign_list order_queue2

loop do
break if assign_list.length==0
puts "*********************************************"
puts "next driver can go now with following orders:"
puts assign_list.map(&:label).join(", ")
puts "*********************************************"
assign_list,left=assign_engine.get_assign_list left
end

puts left.join(", ")





