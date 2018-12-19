Node = Struct.new(:value,:next,:prev)

class List

	include Enumerable
	include Comparable

	attr_reader :head,:tail
	#Funcion que inicializa las variables de instancia de la clase	
	def initialize
		
		@head = nil
		@tail = nil
	end
	#Funcion que devuelve si la lista esta vacia o no
	def vacia
		if((@head==nil)&&(@tail==nil))
			return true
		end
		return false
	end
	#Funcion que inserta una variable en la lista por la cola
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
	#funcion que permite extraer por la cabeza
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
	#funcion que formatea la salida como un string
	def to_s
		cadena = ""
		cabeza = @head
		until (cabeza == nil) do
			cadena += "#{cabeza.value.to_s}"
			cabeza = cabeza.next
		end
		return cadena
	end
	#funcion para comparar los miembros de una lista
	def each(&bloque)
		actual=@head
		while actual != nil do
			yield actual.value
			actual=actual.next
		end
	end
	def orden_for
		ar= []
		actual =@head
		for i in self do
			ar.push(actual.value)
			actual=actual.next
		end
		ar.orden_for
	end
	def orden_each
		ar= []
		actual =@head
		for i in self do
			ar.push(actual.value)
			actual=actual.next
		end
		ar.orden_for
	end
end
	
	
	
	
