require_relative "./00_tree_node.rb"

class KnightPathFinder 
    attr_reader :start_pos, :root_node, :considered_positions
    POSS_MOVES = {
        pos_1: Proc.new {|r, c| [(r - 1), (c - 2)]},
        pos_2: Proc.new {|r, c| [(r - 2), (c - 1)]},
        pos_3: Proc.new {|r, c| [(r + 1), (c - 2)]},
        pos_4: Proc.new {|r, c| [(r + 2), (c - 1)]},
        pos_5: Proc.new {|r, c| [(r + 2), (c + 1)]},
        pos_6: Proc.new {|r, c| [(r + 1), (c + 2)]},
        pos_7: Proc.new {|r, c| [(r - 1), (c + 2)]},
        pos_8: Proc.new {|r, c| [(r - 1), (c + 1)]}
    }

    def self.valid_moves(pos)
        row, col = pos
        selected =[]
        POSS_MOVES.each do |k, v|
            if KnightPathFinder.valid?(v.call(row, col))
                selected << v.call(row, col)
            end
        end
        # make hash/arr procs representing possible moves
        # iterate through poss_moves if a move is valid it is selected
        # return an array of valid possible moves
        selected
    end

    def self.valid?(pos)
        # return a bool if valid
        pos.all? do |ele|
            ele >= 0 && ele < 8
        end
    end
    
    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)
        @considered_positions = []
        
    end

    def new_move_positions(pos)
        @considered_positions += KnightPathFinder.valid_moves(pos)
        
    end

    def build_move_tree

    end


    # 00  01  02  03  04  05  06  07
    # 10  11  12  13  14  15  16  17
    # 20  21  22  23  24  25  26  27
    # 30  31  32  33  34  35  36  37
    # 40  41  42  43  44  45  46  47
    # 50  51  52  53  54  55  56  57
    # 60  61  62  63  64  65  66  67
    # 70  71  72  73  74  75  76  77

    





    
end