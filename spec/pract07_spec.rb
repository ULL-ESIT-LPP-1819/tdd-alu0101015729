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
end
