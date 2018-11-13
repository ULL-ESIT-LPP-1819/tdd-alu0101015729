Nodo = Struct.new(:value,:next,:prev)

class List
	attr_reader :head,:tail
	
	def initialize
		@head = nil
		@tail = nil
	end
	
	def vacia()
		if((@head==nil)&&(@tail==nil))
			return true
		end
		return false
	end
	
	
end