class Individuo

	attr_reader :nombre,:agnos,:sexo
	include Comparable
	#Inicializa las variables
	def initialize(nombre,agnos,sexo)
		@nombre=nombre
		@agnos=agnos
		@sexo=sexo
	end
	#Funcion que retorna un string 
	def to_s
		"Nombre: #{@nombre} Años: #{@agnos} Sexo: #{@sexo}"
	end
	#Funcion para comparar los años
	def <=>(other)
		return self.agnos <=> other.agnos
	end
	#Funcion para comparar los sexos
	def <=>(otro)
		return self.sexo <=> otro.sexo	
	end


		
end

