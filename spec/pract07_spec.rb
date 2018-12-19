require 'benchmark'

RSpec.describe List do
	before :each do
		@etq1=Etiqueta.new("Chocobollo",20.70,2.80,47.30,0.00,9.00,5.80,5.80,11.10,0.00,0.00,2.00,35.10)
		@etq2=Etiqueta.new("Pipas",20.70,2.80,47.30,0.00,9.00,8.00,7.20,11.10,0.00,0.00,2.00,35.10)
		@etq3=Etiqueta.new("Yatekomo",20.70,2.80,47.30,0.00,9.00,7.00,3.40,11.10,0.00,0.00,2.00,35.10)
		@etq4=Etiqueta.new("Hamburguesa",20.70,2.80,47.30,0.00,9.00,3.40,6.50,11.10,0.00,0.00,2.00,35.10)
		@etq5=Etiqueta.new("Agua",20.70,2.80,47.30,0.00,9.00,0.50,0.50,11.10,0.00,0.00,2.00,35.10)	
		@lista= List.new()	
	end

	describe "Funciones Lista" do
		it "Lista vacia" do
			expect(@lista.vacia).to eq(true)
		end
	
		it "Insertar por tail" do
			@lista.insertar_tail(@etq1)
			expect(@lista.tail.value).to eq(@etq1)
		end
		
		it "Extraer por la cola" do       
			@lista.insertar_tail(@etq5)
			@lista.insertar_tail(@etq2)
			expect(@lista.extraer_head).to eq(@etq5)
		end
		
	end
	
	describe "Funciones para Practica" do
		
		it "Gramos de sal" do
			vectpos = []
			vectneg = []
			@lista.insertar_tail(@etq1)
			@lista.insertar_tail(@etq2)
			@lista.insertar_tail(@etq3)
			@lista.insertar_tail(@etq4)
			@lista.insertar_tail(@etq5)
			until @lista.vacia do
				valor=@lista.extraer_head.sal
				if(valor > 6)
					vectneg.push(valor)
				else
					vectpos.push(valor)
				end
			end
			expect(vectneg).to eq([8.0,7.0])
			expect(vectpos).to eq([5.80,3.40,0.50])
		end
		
		it "Metodo to_s" do
			@lista.insertar_tail(@etq1)
			expect(@lista.to_s).to eq(@etq1.to_s)
		end
	end
	describe "Enumerar listas" do
		it "elementos lista" do
			nuevo=2
			@lista.insertar_tail(nuevo)
			nuevo=5
			@lista.insertar_tail(nuevo)
			val=0
		end
		it "Maximo" do
			nuevo=7
			@lista.insertar_tail(nuevo)
			nuevo=6
			@lista.insertar_tail(nuevo)
			nuevo=10
			@lista.insertar_tail(nuevo)
			expect(@lista.max).to eq(10)
		end
		it "Minimo" do
			@lista.insertar_tail(8)
			@lista.insertar_tail(10)
			@lista.insertar_tail(5)
			expect(@lista.min).to eq(5)
		end

		it "Orddenar" do
			@lista.insertar_tail(15)
			@lista.insertar_tail(10)
			@lista.insertar_tail(9)
			expect(@lista.sort).to eq([9, 10, 15])
		end

		it "Select" do
			@lista.insertar_tail(19)
			@lista.insertar_tail(90)
			@lista.insertar_tail(7)
			expect(@lista.select {|v| v==90 }).to eq([90])
		end
		it "collect" do
			@lista.insertar_tail(52)
			@lista.insertar_tail(63)
			expect(@lista.collect{2}).to eq([2,2])
		end
	end
	describe "Ordenacion por Listas" do
		it"Ordenacion por for"do
			@paciente1=Paciente.new("Manuel Gonzalez Perez",22,'hombre',70,160,0.12)
			@paciente2=Paciente.new("Kevin Garcia Peña",23,"hombre",40,150,0.27)
			@paciente3=Paciente.new("Miriam Rodriguez Mendez",20,"mujer",70,187,0.0)
			@paciente4=Paciente.new("Sonia Garcia Santos",20,"mujer",500,190,0.0)
			@paciente5=Paciente.new("Jorge González Cabrera",20,"hombre",56,167,0.54)
			@paciente6=Paciente.new("Oscar",22,"hombre",54,170,0.27)
			@paciente7=Paciente.new("Ramiro Colvezca",28,"hombre",87,200,0.0)
			@paciente8=Paciente.new("Jesus Gonzalez Pimentel",54,"hombre",90,179,0.12)
			@paciente9=Paciente.new("Maria Jesus",26,"hombre",56,132,0.54)
			@paciente10=Paciente.new("Alexandra",35,"hombre",56,167,0.0)
			@lista_pac=List.new()
			@lista_pac.insertar_tail(@paciente1.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente2.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente3.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente4.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente5.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente6.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente7.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente8.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente9.gasto_energetico_total)
			@lista_pac.insertar_tail(@paciente10.gasto_energetico_total)
			expect(@lista_pac.orden_for).to eq([1577.125, 1681.675, 1945.9, 1951.125, 2051.575, 2066.4, 2139.575, 2183.5, 2474.35, 6701.75])
			expect(@lista_pac.orden_each).to eq([1577.125, 1681.675, 1945.9, 1951.125, 2051.575, 2066.4, 2139.575, 2183.5, 2474.35, 6701.75])
			expect(@lista_pac.sort{|a,b| a<=>b}).to eq([1577.125, 1681.675, 1945.9, 1951.125, 2051.575, 2066.4, 2139.575, 2183.5, 2474.35, 6701.75]) 
			n = 50000
			Benchmark.bm do |x|
				x.report("for lista:") {n.times do @lista_pac.orden_for; end}
				x.report("each lista:"){n.times do @lista_pac.orden_each; end}
				x.report("sort lista:"){n.times do @lista_pac.sort{ |a,b| a<=>b};end}
			end
		end
	end
end
