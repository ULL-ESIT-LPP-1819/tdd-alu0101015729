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
end
