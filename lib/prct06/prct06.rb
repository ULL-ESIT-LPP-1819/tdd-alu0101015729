class Etiqueta
	attr_reader :nombre,:vener,:cgrasas,:cgrasassa,:hcarbono,:azucares,:proteinas,:sal,:grasasmono,:grasaspoli,:polialcoholes,:almidon,:fibra,:vitymin

	def initialize(nombre,vener,cgrasas,cgrasassa,hcarbono,azucares,proteinas,sal,grasasmono,grasaspoli,polialcoholes,almidon,fibra,vita)
		@nombre=nombre
		@vener=vener
		@cgrasas=cgrasas
		@cgrasassa=cgrasassa
		@hcarbono=hcarbono
		@azucares=azucares
		@proteinas=proteinas
		@sal=sal
		@grasasmono=grasasmono
		@grasaspoli=grasaspoli
		@polialcoholes=polialcoholes
		@almidon=almidon
		@fibra=fibra
		@vitymin=vita
	end
end
