RSpec.describe Prct06 do

        before :each do
                @alimento=Etiqueta.new("chocobollo",20.70,2.80,47.30,0.00,9.00,270.00,5.80,11.10,0.00,0.00,2.00,35.10,1,75)
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
		it "Cantidad de porciones" do
                        expect(@alimento.porciones).to eq(1)
                end
		it "Peso por porcion" do
                        expect(@alimento.tamano).to eq(75)
                end
	end
	
	describe "#Valor de los elementos por porcion" do
		it "Cantidad de grasas por porcion" do
			expect(@alimento.valorgrasasp()).to eq(14.49)
		end
		it "Cantidad de grasas saturadas por porcion" do
                        expect(@alimento.valorgrasassatup()).to eq(1.96)
                end
		it "Cantidad de Hidratos de Carbono por porcion" do
			expect(@alimento.valorhidratosp()).to eq(33.11)
		end
		it "Cantidad de azucares por porcion" do
			expect(@alimento.valorazucaresp()).to eq(0.0)
		end
		it "Cantidad de proteinas por porcion" do
                        expect(@alimento.valorproteinasp()).to eq(6.3)
                end
		it "Cantidad de sal por porcion" do
                        expect(@alimento.valorsalp()).to eq(189.0)
                end
		it "Cantidad de grasas monoinsaturadas por porcion" do
                        expect(@alimento.valormonograsasp()).to eq(4.06)
                end
		it "Cantidad de grasas poliinsaturadas por porcion" do
                        expect(@alimento.valorgrasaspolip()).to eq(7.77)
                end
		it "Cantidad de polialcoholes por porcion" do
                        expect(@alimento.valorpolialcoholesp()).to eq(0.0)
                end
		it "Cantidad de almidon por porcion" do
                        expect(@alimento.valoralmidonp()).to eq(0.0)
                end
		it "Cantidad de Fibra por porcion" do
                        expect(@alimento.valorfibrap()).to eq(1.4)
                end
		it "Cantidad de Vitaminas y Minerales por porcion" do
                        expect(@alimento.valorvityminp()).to eq(24.57)
                end
	end
end


