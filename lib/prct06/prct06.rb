class Etiqueta
	attr_reader :nombre,:cgrasas,:cgrasassa,:hcarbono,:azucares,:proteinas,:sal,:grasasmono,:grasaspoli,:polialcoholes,:almidon,:fibra,:vitymin,:porciones,:tamano

	def initialize(nombre,cgrasas,cgrasassa,hcarbono,azucares,proteinas,sal,grasasmono,grasaspoli,polialcoholes,almidon,fibra,vita,porciones,tamano)
		@nombre=nombre
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
		@porciones=porciones
		@tamano=tamano
	end

	def valorenergeticoKJ()
		veKJ=(cgrasas * 37) + (cgrasassa * 37) + (grasasmono * 37) + (grasaspoli * 37) + (hcarbono * 17) + (polialcoholes * 10) + (almidon * 17) + (fibra * 8) + (proteinas * 17) + (sal * 25)
		veKJ.round(2)
	end

	def valorenergeticoKcal()
                veKJ=(cgrasas * 9) + (cgrasassa * 9) + (grasasmono * 9) + (grasaspoli * 9) + (hcarbono * 4) + (polialcoholes * 2.4) + (almidon * 4) + (fibra * 2) + (proteinas * 4) + (sal * 6)
                veKJ.round(2)
        end

       	def valorgrasasp()
		vag=(cgrasas * 70) / 100
		vag.round(2)
	end
       	def valorgrasassatup()
		vag=(cgrasassa * 70) / 100
                vag.round(2)
	end	
        def valorhidratosp()
		vag=(hcarbono * 70) / 100
                vag.round(2)
	end
        def valorazucaresp()
		vag=(azucares * 70) / 100
                vag.round(2)
	end
        def valorproteinasp()
		vag=(proteinas * 70) / 100
                vag.round(2)
	end
        def valorsalp()
		vag=(sal * 70) / 100
                vag.round(2)
	end
        def valormonograsasp()
		vag=(grasasmono * 70) / 100
                vag.round(2)
	end
       	def valorgrasaspolip()
		vag=(grasaspoli * 70) / 100
                vag.round(2)
	end
        def valorpolialcoholesp()
		vag=(polialcoholes * 70) / 100
                vag.round(2)
	end
        def valoralmidonp()
		vag=(almidon * 70) / 100
                vag.round(2)
	end
        def valorfibrap()
		vag=(fibra * 70) / 100
                vag.round(2)
	end
        def valorvityminp()
		vag=(vitymin * 70) / 100
                vag.round(2)
        end

end
