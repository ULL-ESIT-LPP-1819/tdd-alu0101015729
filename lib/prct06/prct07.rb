Node = Struct.new(:value,:next,:prev)

class List
	attr_reader :head,:tail
	
	def initialize
		
		@head = nil
		@tail = nil
	end
	
	def vacia
		if((@head==nil)&&(@tail==nil))
			return true
		end
		return false
	end
	
	def insertar_tail(variable)
		if(vacia==true)
			node = Node.new(variable,nil,nil)
			@head = node
			@tail = node
		else
			node = Node.new(variable,nil,nil)
			@tail[:next] = node
			node[:prev] = @tail
			@tail = node
		end
	end
	
	def extraer_head	
		valor = @head.value 
		if(@head==@tail)
			@head,@tail=nil
		else	
			@head = @head[:next]
			@head[:prev] = nil
		end
		return valor
	end
	
	def to_s
		cadena = ""
		cabeza = @head
		until (cabeza == nil) do
			cadena += "#{cabeza.value.to_s}"
			cabeza = cabeza.next
		end
		return cadena
	end
end
	
	
	
	
