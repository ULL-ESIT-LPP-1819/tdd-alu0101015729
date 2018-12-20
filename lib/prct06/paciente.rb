class Paciente < Individuo
	attr_reader :peso,:altura,:factor
	include Enumerable
	#inicializa las variables de instancia de la clase
	def initialize(nombre,edad,sexo,weight,tall,factor)
		super(nombre,edad,sexo)
		@peso=weight
		@altura=tall
		@factor=factor
	end
	#funcion que retorna un string
	def to_s
		"#{super.to_s} Peso: #{@peso} Altura: #{@altura}"
	end
	#funcion que devuelve tu estado fisico
	def imc
		@alt=@altura/100.00
		valor = (@peso) / ( @alt * @alt )
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
		@alt=@altura/100.00
		valor = @peso / ( @alt * @alt )
		return valor
	end

	def peso_teorico_ideal
		peso_teorico_ideal=(@altura-150)*0.75+50
	end

	def gasto_energetico_basal
		if(@sexo='hombre')
			gasto_energetico_basal=(10*@peso)+(6.25*@altura)-(5*@agnos)+5
		else
			gasto_energetico_basal=(10*@peso)+(6.25*@altura)-(5*@agnos)-161
		end
	end

	def efecto_termogeno
		efecto_termogeno= gasto_energetico_basal*0.10
	end

	def gasto_actividad_fisica
		gasto_actividad_fisica=gasto_energetico_basal * factor
	end

	def gasto_energetico_total
		gasto_energetico_total = gasto_energetico_basal + efecto_termogeno + gasto_actividad_fisica
	end
	def <=>(other)
		self.gasto_energetico_total <=> other.gasto_energetico_total
	end

end
