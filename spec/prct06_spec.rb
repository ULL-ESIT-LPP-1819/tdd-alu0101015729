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
	
	describe "Valor de IR de los elementos del producto" do
		it "Valor IR de valor energetico en KJ" do
                        expect(@alimento.irenergeticoKJ()).to eq(109.74)
                end
                it "Valor IR de valor energetico en Kcal" do
                        expect(@alimento.irenergeticoKcal()).to eq(110.64)
                end
                it "Valor IR de valor de grasas" do
                        expect(@alimento.irgrasas()).to eq(29.57)
                end
                it "Valor IR de grasas saturadas" do
                        expect(@alimento.irgrasassaturadas()).to eq(4.0)
                end
                it "Valor IR de hidratos de carbono" do
                        expect(@alimento.irhidratos()).to eq(18.19)
                end
                it "Valor IR de azucares" do
                        expect(@alimento.irazucares()).to eq(0.0)
                end
		it "Valor IR de proteinas" do
                        expect(@alimento.irproteinas()).to eq(18)
                end
		it "Valor IR de sal" do
                        expect(@alimento.irsal()).to eq(4500.0)
                end
		it "Valor IR de grasas monointeresadas" do
                        expect(@alimento.irmonograsas()).to eq(8.29)
                end
		it "Valor IR de poliinsaturadas" do
                        expect(@alimento.irpoliinsaturadas()).to eq(15.86)
                end
		it "Valor IR de polialcoholes" do
                        expect(@alimento.irpolialcoholes()).to eq(0.0)
                end
		it "Valor IR de almidon" do
                        expect(@alimento.iralmidon()).to eq(0.0)
                end
		it "Valor IR de fibra" do
                        expect(@alimento.irfibra()).to eq(4.0)
                end
		it "Valor IR de vitaminas y minerales" do
                        expect(@alimento.irvitaminas()).to eq(70.2)
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
	
	describe "Valor de IR de los elementos del producto por porcion" do
		it "Valor IR de valor energetico en KJ por porcion" do
                        expect(@alimento.irenergeticoKJ()).to eq(109.74)
                end
                it "Valor IR de valor energetico en Kcal por porcion" do
                        expect(@alimento.irenergeticoKcalp).to eq(77.45)
                end
                it "Valor IR de valor de grasas por porcion" do
                        expect(@alimento.irgrasasp).to eq(2.8)
                end
                it "Valor IR de grasas saturadas por porcion" do
                        expect(@alimento.irgrasassaturadasp).to eq(2.8)
                end
                it "Valor IR de hidratos de carbono por porcion" do
                        expect(@alimento.irhidratosp).to eq(12.73)
                end
                it "Valor IR de azucares por porcion" do
                        expect(@alimento.irazucaresp).to eq(0.0)
                end
		it "Valor IR de proteinas por porcion" do
                        expect(@alimento.irproteinasp).to eq(12.6)
                end
		it "Valor IR de sal por porcion" do
                        expect(@alimento.irsalp).to eq(3150.0)
                end
		it "Valor IR de grasas monointeresadas por porcion" do
                        expect(@alimento.irmonograsaslp).to eq(5.8)
                end
		it "Valor IR de poliinsaturadas por porcion" do
                        expect(@alimento.irpoliinsaturadasp).to eq(11.1)
                end
		it "Valor IR de polialcoholes por porcion" do
                        expect(@alimento.irpolialcoholesp).to eq(0.0)
                end
		it "Valor IR de almidon por porcion" do
                        expect(@alimento.iralmidonp).to eq(0.0)
                end
		it "Valor IR de fibra por porcion" do
                        expect(@alimento.irfibrap).to eq(2.8)
                end
		it "Valor IR de vitaminas y minerales por porcion" do
                        expect(@alimento.irvitaminasp).to eq(49.14)
                end

	end
	
	describe "Tabla de valores" do
		it" Imprimir tabla de valores" do
			expect(@alimento.to_s).to eq("Por 100g o 100ml de producto	Ir del producto	Por porcion de X gramos	IR por porcion\n"+
		" Valor energetico: #{@alimento.valorenergeticoKJ}/#{@alimento.valorenergeticoKcal}\t#{@alimento.irenergeticoKJ}/#{@alimento.irenergeticoKcal}\t#{@alimento.valorenergeticoKJp}/#{@alimento.valorenergeticoKcalp}\t#{@alimento.irenergeticoKJp}/#{@alimento.irenergeticoKcalp}\n"+
		" Grasas: #{@alimento.cgrasas}\t#{@alimento.irgrasas}\t#{@alimento.valorgrasasp}\t#{@alimento.irgrasasp}\n"+
		" Grasas monosaturadas: #{@alimento.grasasmono}\t#{@alimento.irmonograsas}\t#{@alimento.valormonograsasp}\t#{@alimento.irmonograsaslp}\n"+
		" Grasas poliinsaturadas: #{@alimento.grasaspoli}\t#{@alimento.irpoliinsaturadas}\t#{@alimento.valorgrasasp}\t#{@alimento.irpoliinsaturadas}\n"+
		" Hidratos de carbono: #{@alimento.hcarbono}\t#{@alimento.irhidratos}\t#{@alimento.valorhidratosp}\t#{@alimento.irhidratosp}\n"+
		" Azucares: #{@alimento.azucares}\t#{@alimento.irazucares}\t#{@alimento.valorazucaresp}\t#{@alimento.irazucaresp}\n"+
		" Polialcoholes: #{@alimento.polialcoholes}\t#{@alimento.irpolialcoholes}\t#{@alimento.valorpolialcoholesp}\t#{@alimento.irpolialcoholesp}\n"+
		" Almidon: #{@alimento.almidon}\t#{@alimento.iralmidon}\t#{@alimento.valoralmidonp}\t#{@alimento.iralmidonp}\n"+
		" Fibra alimentaria: #{@alimento.fibra}\t#{@alimento.irfibra}\t#{@alimento.valorfibrap}\t#{@alimento.irfibrap}\n"+
		" Sal: #{@alimento.sal}\t#{@alimento.irsal}\t#{@alimento.valorsalp}\t#{@alimento.irsalp}\n"+
		" Vitamina/mineral: #{@alimento.vitymin}\t#{@alimento.irvitaminas}\t#{@alimento.valorvityminp}\t#{@alimento.irvitaminasp}\n")
		end
	end

	describe "Comparable" do
		it "Menor" do
			@ejemplo=Etiqueta.new("Pipas",21.50,2.90,44.30,1.00,8.00,6.00,9.00,13.90,0.60,0.90,3.50,37.10,5,79)
			expect(@alimento < @ejemplo).to eq(false)
		end
		it "Igual" do
			@ejemplo=Etiqueta.new("choco",20.70,2.80,47.30,0.00,9.00,270.00,5.80,11.10,0.00,0.00,2.00,35.10,1,75)
			expect(@ejemplo == @alimento).to eq(true)
		end
		it "Mayor" do
			@ejemplo=Etiqueta.new("Yatekomo",20.70,2.80,47.30,1.00,8.00,6.00,9.00,13.90,0.60,0.90,3.50,37.10,5,79)
			expect(@alimento > @ejemplo).to eq(true)
		end
		it "Menor o Igual" do
			 @ejemplo=Etiqueta.new("Arroz",20.70,2.80,47.30,1.00,8.00,6.00,9.00,13.90,0.60,0.90,3.50,37.10,5,79)
			 expect(@alimento <= @ejemplo).to eq(false)
		end
		it "Mayor o Igual" do
			@ejemplo=Etiqueta.new("Arroz",20.70,2.80,47.30,1.00,8.00,6.00,9.00,13.90,0.60,0.90,3.50,37.10,5,79)
			expect(@alimento >= @ejemplo).to eq(true)
									                  end
	end
end


