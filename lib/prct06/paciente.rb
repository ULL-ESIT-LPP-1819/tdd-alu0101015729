class Paciente < Individuo
	attr_reader :peso,:altura,:circunferenciaca,:circunferenciaci

	def initialize(nombre,edad,sexo,weight,tall,circunca,circunci)
		super(nombre,edad,sexo)
		@peso=weight
		@altura=tall
		@circunferenciaca=circunca
		@circunferenciaci=circunci
	end
end
