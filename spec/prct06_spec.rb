RSpec.describe Prct06 do

        before :each do
                @alimento=Etiqueta.new("chocobollo",20.70,2.80,47.30,0.00,9.00,270.00,5.80,11.10,0.00,0.00,2.00,35.10)
        end	
	describe "# valor de los elementos de la etiqueta" do
		it "Tipo de alimento" do
			expect(@alimento.nombre).to eq("chocobollo")
		end
	
		it "Cantidad de grasas" do
			expect(@alimento.cgrasas).to eq(20.70)
		end
		it "Cantidad de grasas saturadas" do
			expect(@alimento.cgrasassa).to eq(2.80)
		end
		it "Cantidad de hidratos de Carbono" do
			expect(@alimento.hcarbono).to eq(47.30)
		end
		it "Cantidad de Azucares" do
			expect(@alimento.azucares).to eq(0.00)
		end
		it "Cantidad de Proteinas" do
			expect(@alimento.proteinas).to eq(9.00)
		end
		it "Cantidad de Sal" do
			expect(@alimento.sal).to eq(270.00)
		end
		it "Cantidad de grasas monosaturadas" do
			expect(@alimento.grasasmono).to eq(5.80)
		end
		it "Cantidad de grasas polisaturadas" do
			expect(@alimento.grasaspoli).to eq(11.10)
		end
		it "Cantidad de Polialcoholes" do
			expect(@alimento.polialcoholes).to eq(0.00)
		end
		it "Cantidad de Almidon" do
			expect(@alimento.almidon).to eq(0.00)
		end
		it "Cantidad de Fibra" do
			expect(@alimento.fibra).to eq(2.00)
		end
		it "Cantidad de Vitaminas y Minerales" do
			expect(@alimento.vitymin).to eq(35.10)
		end
 		it "Valor energetico en kJ" do
			expect(@alimento.valorenergeticoKJ()).to eq(9217.9)
		end
		it "Valor energetico en kcal" do
                        expect(@alimento.valorenergeticoKcal()).to eq(2212.8)
                end
	end
end


