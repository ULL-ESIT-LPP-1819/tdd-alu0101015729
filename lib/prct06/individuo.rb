class Individuo

	attr_reader :nombre,:agnos,:sexo
	include Comparable

	def initialize(nombre,agnos,sexo)
		@nombre=nombre
		@agnos=agnos
		@sexo=sexo
	end

	def to_s
		"Nombre: #{@nombre} Años: #{@agnos} Sexo: #{@sexo}"
	end

	def <=>(other)
		return self.agnos <=> other.agnos
	end

	def <=>(otro)
		return self.sexo <=> otro.sexo	
	end


		
end

