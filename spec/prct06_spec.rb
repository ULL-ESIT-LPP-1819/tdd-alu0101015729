RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end

describe Etiqueta do
        before :each do
                @alimento=Etiqueta.new("chocobollo",416.00,20.70,2.80,47.30,0.00,9.00,270.00,5.80,11.10,0.00,0.00,2.00,35.10)
        end
	
	describe "# valor de los elementos de la etiqueta" do
		it "Tipo de alimento" do
			expect(@alimento.tipo).to_s eq("chocobollo")
		end
		it "Valor energetico" do
			expect(@alimento.valor).to_f eq(416.00)
		end
		it "Cantidad de grasas" do
			expect(@alimento.grasas).to_f eq(20.70)
		end
		it "Cantidad de grasas saturadas" do
			expect(@alimento.grasassatu).to_f eq(2.80)
		end
		it "Cantidad de hidratos de Carbono" do
			expect(@alimento.hcarbono).to_f eq(47.30)
		end
		it "Cantidad de Azucares" do
			expecr(@alimento.azucares).to_f eq(0.00)
		end
		it "Cantidad de Proteinas" do
			expect(@alimento.proteinas).to_f eq(9.00)
		end
		it "Cantidad de Sal" do
			expect(@alimento.sal).to_f eq(270.00)
		end
		it "Cantidad de grasas monosaturadas" do
			expect(@alimento.grasasmono).to_f eq(5.80)
		end
		it "Cantidad de grasas polisaturadas" do
			expect(@alimento.grasapoli).to_f eq(11.10)
		end
		it "Cantidad de Polialcoholes" do
			expect(@alimento.polialcoholes).to_f eq(0.00)
		end
		it "Cantidad de Almidon" do
			expect(@alimento.almidon).to_f eq(0.00)
		end
		it "Cantidad de Fibra" do
			expect(@alimento.fibra).to_f eq(2.00)
		end
		it "Cantidad de Vitaminas y Minerales" do
			expect(@alimento.vit).to_f eq(35.10)
		end
	end
end


