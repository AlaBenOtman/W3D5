require 'byebug'
class PolyTreeNode
    attr_reader :children, :value, :parent
    def initialize(value)
        @parent = nil 
        @children = []
        @value = value 
    end

    def parent=(new_parent)
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
            new_parent.children << self
        end
    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
        child.parent = nil
    end

    def dfs(target_value)
        return self if self.value == target_value
       if !self.children.empty? 
            self.children.each do |child|
              check = child.dfs(target_value)
                return check if !check.nil?
            end
        end 
        nil
    end

    def bfs(target_value)
        array = [self]
        until array.empty?
            first = array.shift
            if first.value == target_value
                 return first
            else
                array += first.children
            end
        end
        nil
    end

    def inspect 
        "<Value:#{self.value}><Childern:#{self.children}><Parent:#{self.parent.value}>"
    end

end

        #         n1
        #     /       \
        #     n2      n3
        # /     \       \
        # n4    n5       n6

# n1 = PolyTreeNode.new("1")
# n2 = PolyTreeNode.new("2")
# n3 = PolyTreeNode.new("3")
# n4 = PolyTreeNode.new("4")
# n5 = PolyTreeNode.new("5")
# n6 = PolyTreeNode.new("6")
# n6.parent = n3
# n5.parent = n2
# n4.parent = n2
# n2.parent = n1
# n3.parent = n1

