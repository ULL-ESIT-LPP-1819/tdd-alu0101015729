class Paciente < Individuo
	attr_reader :peso,:altura,:circunferenciaca,:circunferenciaci

	def initialize(nombre,edad,sexo,weight,tall,circunca,circunci)
		super(nombre,edad,sexo)
		@peso=weight
		@altura=tall
		@circunferenciaca=circunca
		@circunferenciaci=circunci
	end

	def to_s
		"#{super.to_s} Peso: #{@peso} Altura: #{@altura} Circunferencia Cintura: #{@circunferenciaca} Circunferencia Cadera: #{@circunferenciaci}"
	end

	def imc
		valor = @peso / ( @altura * @altura )
		if valor < 5
			return "Delgado"
		elsif valor >=18.5 and valor < 25
			return "Aceptable"
		elsif valor >=25 and valor < 30
			return "Sobrepeso"
		else
			return "Obesidad"
		end
	end
end
