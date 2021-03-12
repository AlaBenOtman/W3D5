require 'byebug'
class PolyTreeNode
    attr_reader :children, :value, :parent
    def initialize(value)
        @parent = nil 
        @children = []
        @value = value 
    end

    def parent=(new_parent)
        if @parent.nil? 
            @parent = new_parent

        else 
            @parent.children.delete(self)

        end
        debugger
        unless new_parent.children.include?(self) || self == nil
            @parent = new_parent
            new_parent.children << self
        end
    end


end

   