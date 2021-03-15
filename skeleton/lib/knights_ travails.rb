require_relative "./00_tree_node.rb"

class KnightPathFinder 
    attr_reader :start_pos, :root_node

    def self.valid_moves(pos)
        @considered_positions = [@start_pos]
    end

    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)
        
    end

    def new_move_positions(pos)
        
    end

    def build_move_tree

    end








    
end