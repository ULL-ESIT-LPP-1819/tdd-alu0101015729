RSpec.describe List do
	before :each do
		@etq1=Etiqueta.new("Chocobollo",20.70,2.80,47.30,0.00,9.00,270.00,5.80,11.10,0.00,0.00,2.00,35.10,1,75)
		@etq2=Etiqueta.new("Pipas",20.70,2.80,47.30,0.00,9.00,270.00,7.20,11.10,0.00,0.00,2.00,35.10,1,75)
		@etq3=Etiqueta.new("Yatekomo",20.70,2.80,47.30,0.00,9.00,270.00,3.40,11.10,0.00,0.00,2.00,35.10,1,75)
		@etq4=Etiqueta.new("Hamburguesa",20.70,2.80,47.30,0.00,9.00,270.00,6.50,11.10,0.00,0.00,2.00,35.10,1,75)
		@etq5=Etiqueta.new("Agua",20.70,2.80,47.30,0.00,9.00,270.00,0.50,11.10,0.00,0.00,2.00,35.10,1,75)
		
		@lista= List.new()	
	end

	describe "Funciones Lista" do
		
		it "Lista vacia" do
			expect(@lista.vacia).to eq(false)
		end
	
		it "Insertar por tail" do
			variable=3
			@lista.insertar_tail(variable)
			expect(@lista.tail.value).to eq(variable)
		end
		
		it "Extraer por la cola" do 
			@lista.insertar_tail(@etq1)
			@lista.insertar_tail(@etq2)
			expect(@lista.extraer_head).to eq(@etq1)
		end
		
	end




end