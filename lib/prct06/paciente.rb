class Paciente < Individuo
	attr_reader :peso,:altura
	include Enumerable
	#inicializa las variables de instancia de la clase
	def initialize(nombre,edad,sexo,weight,tall)
		super(nombre,edad,sexo)
		@peso=weight
		@altura=tall
	end
	#funcion que retorna un string
	def to_s
		"#{super.to_s} Peso: #{@peso} Altura: #{@altura}"
	end
	#funcion que devuelve tu estado fisico
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
	#funcion que devuelve tu indice de masa corporal
	def imc1
		valor = @peso / ( @altura * @altura )
		return valor
	end
end
