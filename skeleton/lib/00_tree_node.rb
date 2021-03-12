class PolyTreeNode
    attr_reader :children, :value, :parent
    def initialize(value)
        @parent = nil 
        @children = []
        @value = value 
    end

    def parent=(parent)
        if @parent.nil? 
            @parent = parent
        else 
            @parent.children.delete(self)
        end
        unless parent.children.include?(self)
            parent.children << self 
        end
    end


end