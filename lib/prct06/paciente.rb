class Paciente < Individuo
	attr_reader :peso,:altura

	def initialize(nombre,edad,sexo,weight,tall)
		super(nombre,edad,sexo)
		@peso=weight
		@altura=tall
	end

	def to_s
		"#{super.to_s} Peso: #{@peso} Altura: #{@altura}"
	end

	def imc
		valor = @peso / ( @altura * @altura )
		if valor < 18.5
			return "Delgado"
		elsif valor >=18.5 and valor < 25
			return "Aceptable"
		elsif valor >=25 and valor < 30
			return "Sobrepeso"
		else
			return "Obesidad"
		end
	end

	def imc1
		valor = @peso / ( @altura * @altura )
		return valor
	end
end
