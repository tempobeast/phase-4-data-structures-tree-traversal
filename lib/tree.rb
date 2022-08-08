class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(string)
    result = []
    nodes_to_visit = [@root]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == string
        return node
      else
      result.push(node[:id])
      nodes_to_visit = node[:children] + nodes_to_visit
      end
      nil
    end

  end


end