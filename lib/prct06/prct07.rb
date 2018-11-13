Node = Struct.new(:value,:next,:prev)

class List
	attr_reader :head,:tail
	
	def initialize
		@head = Node.new(nil,nil,nil)
		@tail = @head
	end
	
	def vacia
		if((@head==nil)&&(@tail==nil))
			return true
		end
		return false
	end
	
	def insertar_tail(variable)
		if(vacia)
			aux = Node.new(variable,nil,nil)
			aux.next = aux 
			aux.prev = aux
			@head = aux
			@tail = aux
		else
			aux = Node.new(variable,@tail,@tail.prev)
			@tail.next = aux
			@tail.prev = aux
			@tail=aux
		end
	end
end
	
	
	
	
