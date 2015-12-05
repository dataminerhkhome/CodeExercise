class Graph
  attr_accessor :nodes
  attr_accessor :edges
  attr_accessor :root

  def initialize(areas,root)
    @root=Node.new(root)
    @nodes = []
    @edges = []
    add_node(@root)
    areas.each do |area|
      add_node(Node.new(area))
    end
    add_all_edges
  end

  def add_all_edges
    nodes.each do |node|
      nodes.each do |other|
        add_edge(node,other) unless node==other
      end
    end

  end

  def add_node(node)
    nodes << node
    node.graph = self
  end





  def add_edge(from, to)
    edges << Edge.new(from, to)
  end
end