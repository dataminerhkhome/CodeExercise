class Node
  attr_accessor :name,:label,:loc,:graph

  def initialize(area)
    @name = area[:name]
    @label= area[:label]
    @loc=area[:location]
  end

  def nearest orders
    graph.edges.select{|e| e.from == self&& (orders.include? e.to.label)}.sort_by{|edge| edge.distance}.map(&:to).first
  end
  



  def distance_to to
    c_edge=graph.edges.select{|e| e.from==self && e.to==to}.first
    c_edge.distance
  end

  def to_s
    @name
  end
end