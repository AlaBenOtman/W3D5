require 'byebug'
class PolyTreeNode
    attr_reader :children, :value, :parent
    def initialize(value)
        @parent = nil 
        @children = []
        @value = value 
    end

    def parent=(new_parent)
        # debugger
        if new_parent == nil 
            @parent.children.delete(self)
            @parent = nil
            return
        end
            if @parent.nil? 
                @parent = new_parent

            else 
                @parent.children.delete(self)
                @parent = new_parent
            end
        
        unless new_parent.children.include?(self) 
            # @parent = new_parent
            new_parent.children << self
        end

        
    end

    def add_child(child)
        child.parent=(self)
    end

    def remove_child(child)
        child.parent=(nil)
    end

    def dfs(target_value)
        return target_value if self.value == target_value

        self.each do |child|
            return nil if child == nil
            child.dfs(target_value)

        end

        # nil
    end


end

