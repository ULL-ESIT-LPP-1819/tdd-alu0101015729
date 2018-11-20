class Individuo

	attr_reader :nombre,:agnos,:sexo

	def initialize(nombre,agnos,sexo)
		@nombre=nombre
		@agnos=agnos
		@sexo=sexo
	end

	def to_s
		"Nombre: #{@nombre} Años: #{@agnos} Sexo: #{@sexo}"
	end
		
end

