class Etiqueta
	include Comparable

	attr_reader :nombre,:cgrasas,:cgrasassa,:hcarbono,:azucares,:proteinas,:sal,:grasasmono,:grasaspoli,:polialcoholes,:almidon,:fibra,:vitymin,:porciones,:tamano
	#funcion que initializa las variables de instacia de la clase
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
	#funcion que retorna el valor de los KJ
	def valorenergeticoKJ
		veKJ=(cgrasas * 37) + (cgrasassa * 37) + (grasasmono * 37) + (grasaspoli * 37) + (hcarbono * 17) + (polialcoholes * 10) + (almidon * 17) + (fibra * 8) + (proteinas * 17) + (sal * 25)
		veKJ.round(2)
	end
	#funcion que retorna el valor de las Kcal
	def valorenergeticoKcal
                veKJ=(cgrasas * 9) + (cgrasassa * 9) + (grasasmono * 9) + (grasaspoli * 9) + (hcarbono * 4) + (polialcoholes * 2.4) + (almidon * 4) + (fibra * 2) + (proteinas * 4) + (sal * 6)
                veKJ.round(2)
        end
	#funcion que retorna el valor por porcion de los KJ
	def valorenergeticoKJp
		vag=(valorenergeticoKJ * 70) / 100
		vag.round(2)
	end
	#funcion que retorna el valor por porcion de las kcal	
	def valorenergeticoKcalp
		vag=(valorenergeticoKcal * 70) / 100
		vag.round(2)
	end
	#funcion que retorna el valor por porcion de las grasas			
       	def valorgrasasp
		vag=(cgrasas * 70) / 100
		vag.round(2)
	end
	#funcion que retorna el valor por porcion de las grasas saturadas
       	def valorgrasassatup
		vag=(cgrasassa * 70) / 100
                vag.round(2)
	end	
	#funcion que retorna el valor por porcion de los hidratos
        def valorhidratosp
		vag=(hcarbono * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion del azucar
        def valorazucaresp
		vag=(azucares * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion de las proteinas
        def valorproteinasp
		vag=(proteinas * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion de la sal
        def valorsalp
		vag=(sal * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion de las monograsas
        def valormonograsasp
		vag=(grasasmono * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion de las grasas polisaturadas
       	def valorgrasaspolip
		vag=(grasaspoli * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion de los polialcoholes
        def valorpolialcoholesp
		vag=(polialcoholes * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion del almidon
        def valoralmidonp
		vag=(almidon * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion de la fibra
        def valorfibrap
		vag=(fibra * 70) / 100
                vag.round(2)
	end
	#funcion que retorna el valor por porcion de las vitaminas
        def valorvityminp
		vag=(vitymin * 70) / 100
                vag.round(2)
        end

	#funion que devuelve el indice de referencia de los KJ
	def irenergeticoKJ
                vag=(valorenergeticoKJ() * 100) / 8400
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de las kcal
        def irenergeticoKcal
                vag=(valorenergeticoKcal() * 100) / 2000
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de las grasas
	def irgrasas
                vag=(cgrasas * 100) / 70
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de las grasas saturadas
	def irgrasassaturadas
                vag=(cgrasassa * 100) / 70
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de los hidratos
        def irhidratos
                vag=(hcarbono * 100) / 260
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de los azucares
        def irazucares
                vag=(azucares * 100) / 90
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de las proteinas
        def irproteinas
                vag=(proteinas * 100) / 50
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de la sal
        def irsal
                vag=(sal * 100) / 6
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de las monograsas
        def irmonograsas
                vag=(grasasmono * 100) / 70
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de las grasas poliinsaturadas
	def irpoliinsaturadas
                vag=(grasaspoli * 100) / 70
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de los polialcoholes
	def irpolialcoholes
                vag=(polialcoholes * 100) / 90
                vag.round(2)
        end
	#funion que devuelve el indice de referencia del almidon
	def iralmidon
                vag=(almidon * 100) / 90
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de la fibra
	def irfibra
                vag=(fibra * 100) / 50
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de las vitaminas
	def irvitaminas
                vag=(vitymin * 100) / 50
                vag.round(2)
        end
		
	 #funion que devuelve el indice de referencia de los KJ por porcion	
	def irenergeticoKJp
                vag=(valorenergeticoKJp() * 100) / 8400
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de las kcal por porcion
        def irenergeticoKcalp
                vag=(valorenergeticoKcalp() * 100) / 2000
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de las grasas por porcion
	def irgrasasp
                vag=(valorgrasassatup * 100) / 70
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de las grasas satturadaas por porcion
	def irgrasassaturadasp
                vag=(valorgrasassatup * 100) / 70
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de los hidratos de carbono por porcion
        def irhidratosp
                vag=(valorhidratosp * 100) / 260
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de los azucares por porcion
        def irazucaresp
                vag=(valorazucaresp * 100) / 90
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de las proteinas por porcion
        def irproteinasp
                vag=(valorproteinasp * 100) / 50
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de la sal por porcion
        def irsalp
                vag=(valorsalp * 100) / 6
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de las monograsas por porcion
        def irmonograsaslp
                vag=(valormonograsasp * 100) / 70
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de las grasas poliinsaturadas por porcion
	def irpoliinsaturadasp
                vag=(valorgrasaspolip * 100) / 70
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de los alcoholes por porcion
	def irpolialcoholesp
                vag=(valorpolialcoholesp * 100) / 90
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia del almidon por porcion
	def iralmidonp
                vag=(valoralmidonp * 100) / 90
                vag.round(2)
        end
	 #funion que devuelve el indice de referencia de la fibra por porcion
	def irfibrap
                vag=(valorfibrap * 100) / 50
                vag.round(2)
        end
	#funion que devuelve el indice de referencia de las vitaminas por porcion
	def irvitaminasp
                vag=(valorvityminp * 100) / 50
                vag.round(2)
        end
	#funcion que formatea la salida a un string
	def to_s
		"Por 100g o 100ml de producto\tIr del producto\tPor porcion de X gramos\tIR por porcion\n"+
		" Valor energetico: #{valorenergeticoKJ}/#{valorenergeticoKcal}\t#{irenergeticoKJ}/#{irenergeticoKcal}\t#{valorenergeticoKJp}/#{valorenergeticoKcalp}\t#{irenergeticoKJp}/#{irenergeticoKcalp}\n"+
		" Grasas: #{cgrasas}\t#{irgrasas}\t#{valorgrasasp}\t#{irgrasasp}\n"+
		" Grasas monosaturadas: #{grasasmono}\t#{irmonograsas}\t#{valormonograsasp}\t#{irmonograsaslp}\n"+
		" Grasas poliinsaturadas: #{grasaspoli}\t#{irpoliinsaturadas}\t#{valorgrasasp}\t#{irpoliinsaturadas}\n"+
		" Hidratos de carbono: #{hcarbono}\t#{irhidratos}\t#{valorhidratosp}\t#{irhidratosp}\n"+
		" Azucares: #{azucares}\t#{irazucares}\t#{valorazucaresp}\t#{irazucaresp}\n"+
		" Polialcoholes: #{polialcoholes}\t#{irpolialcoholes}\t#{valorpolialcoholesp}\t#{irpolialcoholesp}\n"+
		" Almidon: #{almidon}\t#{iralmidon}\t#{valoralmidonp}\t#{iralmidonp}\n"+
		" Fibra alimentaria: #{fibra}\t#{irfibra}\t#{valorfibrap}\t#{irfibrap}\n"+
		" Sal: #{sal}\t#{irsal}\t#{valorsalp}\t#{irsalp}\n"+
		" Vitamina/mineral: #{vitymin}\t#{irvitaminas}\t#{valorvityminp}\t#{irvitaminasp}\n"
	end
	#funcion para comparar elementos de las etiquetas
	def <=>(ejem)
		return self.valorenergeticoKJ <=> ejem.valorenergeticoKJ
	end
end
