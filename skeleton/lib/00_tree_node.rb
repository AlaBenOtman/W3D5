class PolyTreeNode
    attr_reader :children, :value, :parent
    def initialize(value)
        @parent = nil 
        @children = []
        @value = value 
    end

    # def parents=(parents)
    #     parents.children << self
    # end
end