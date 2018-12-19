RSpec.describe Prct06 do

        before :each do
                @alimento=Etiqueta.new("chocobollo",20.70,2.80,47.30,0.00,9.00,270.00,5.80,11.10,0.00,0.00,2.00,35.10)
		@paciente1=Paciente.new("Manuel Gonzalez Perez",22,'hombre',70,160,0.12)
		@paciente2=Paciente.new("Kevin Garcia Peña",23,"hombre",40,150,0.27)
		@paciente3=Paciente.new("Miriam Rodriguez Mendez",20,"mujer",70,187,0.0)
		@paciente4=Paciente.new("Sonia Garcia Santos",20,"mujer",500,190,0.0)
		@paciente5=Paciente.new("Jorge González Cabrera",20,"hombre",56,167,0.54)

		@menu1=List.new()
		@menu2=List.new()
		@menu3=List.new()
		@menu4=List.new()
		@menu5=List.new()

		@etiqueta1 = Etiqueta.new('Chocolate', 0, 0, 0, 0, 0, 0, 0, 58.43, 0,0, 0,0)
		@etiqueta6 = Etiqueta.new('Mantequilla', 0, 0, 0, 0, 0, 0, 0, 21.014, 0,0, 0,0)
		@etiqueta2 = Etiqueta.new('Nutela', 57.16 ,8.12 , 37.28, 6.72,14.8 ,3.97 ,0 ,0 ,10.3 ,17.64 , 0.2, 0)
		@etiqueta3 = Etiqueta.new('Chuleta', 12, 6.54, 6.07, 1.09, 0.8, 0, 0, 0, 0, 19.1, 7, 0.5)
		@etiqueta4 = Etiqueta.new('Aceite',92, 14, 69, 9.2, 0, 0, 0, 0, 2.9, 0, 8, 0)
		@etiqueta5 = Etiqueta.new('Colacao0%', 5.8, 3, 2, 0.8, 40, 5, 0,0, 22, 9.2, 0.04, 0)
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
			@ejemplo=Etiqueta.new("Pipas",21.50,2.90,44.30,1.00,8.00,6.00,9.00,13.90,0.60,0.90,3.50,37.10)
			expect(@alimento < @ejemplo).to eq(false)
		end
		it "Igual" do
			@ejemplo=Etiqueta.new("choco",20.70,2.80,47.30,0.00,9.00,270.00,5.80,11.10,0.00,0.00,2.00,35.10)
			expect(@ejemplo == @alimento).to eq(true)
		end
		it "Mayor" do
			@ejemplo=Etiqueta.new("Yatekomo",20.70,2.80,47.30,1.00,8.00,6.00,9.00,13.90,0.60,0.90,3.50,37.10)
			expect(@alimento > @ejemplo).to eq(true)
		end
		it "Menor o Igual" do
			 @ejemplo=Etiqueta.new("Arroz",20.70,2.80,47.30,1.00,8.00,6.00,9.00,13.90,0.60,0.90,3.50,37.10)
			 expect(@alimento <= @ejemplo).to eq(false)
		end
		it "Mayor o Igual" do
			@ejemplo=Etiqueta.new("Arroz",20.70,2.80,47.30,1.00,8.00,6.00,9.00,13.90,0.60,0.90,3.50,37.10)
			expect(@alimento >= @ejemplo).to eq(true)
		end
	end
	describe "menu" do
		it "menu" do
			@menu1.insertar_tail(@etiqueta1)
			

			@menu2.insertar_tail(@etiqueta4)
			@menu2.insertar_tail(@etiqueta5)
			@menu2.insertar_tail(@etiqueta1)
			
			@menu3.insertar_tail(@etiqueta3)
			@menu3.insertar_tail(@etiqueta4)
			
			@menu4.insertar_tail(@etiqueta4)
			@menu4.insertar_tail(@etiqueta5)
			

			@menu5.insertar_tail(@etiqueta4)
			@menu5.insertar_tail(@etiqueta5)
			
			
			gastototal= (@paciente1.gasto_energetico_total)
			kjmenu1 = @menu1.reduce(0) {|sum, num| (sum + num.valorenergeticoKJ).round(2) }
			percenttop=(kjmenu1*0.9).round(2)
			percentbottom=(kjmenu1*1.1).round(2)
			expect(gastototal.between?(percenttop,percentbottom)).to eq(true)

			
			gastototal2= (@paciente2.gasto_energetico_total)
			kjmenu2 = @menu2.reduce(0) {|sum, num| (sum + num.valorenergeticoKJ).round(2) }
			percenttop=(kjmenu2*0.9).round(2)
			percentbottom=(kjmenu2*1.1).round(2)
			expect(gastototal2.between?(percenttop,percentbottom)).to eq(false)

		
			gastototal= (@paciente3.gasto_energetico_total)
			kjmenu3 = @menu3.reduce(0) {|sum, num| (sum + num.valorenergeticoKJ).round(2) }
			percenttop=(kjmenu3*0.9).round(2)
			percentbottom=(kjmenu3*1.1).round(2)
			expect(gastototal.between?(percenttop,percentbottom)).to eq(false)
			
		
			gastototal= (@paciente4.gasto_energetico_total)
			kjmenu4 = @menu4.reduce(0) {|sum, num| (sum + num.valorenergeticoKJ).round(2)}
			percenttop=(kjmenu4*0.9).round(2)
			percentbottom=(kjmenu4*1.1).round(2)
			expect(gastototal.between?(percenttop,percentbottom)).to eq(true)

			
			gastototal= (@paciente5.gasto_energetico_total)
			kjmenu5 = @menu5.reduce(0) {|sum, num| (sum + num.valorenergeticoKJ).round(2) }
			percenttop=(kjmenu5*0.9).round(2)
			percentbottom=(kjmenu5*1.1).round(2)
			expect(gastototal.between?(percenttop,percentbottom)).to eq(false)
		end
	end
	#Practica 11
	describe"Metodos Ordenacion de Array" do
		it"Ordenacion for" do
			@men1=[@etiqueta1,@etiqueta2].reduce(:+).round(2)
			@men2=[@etiqueta2,@etiqueta3].reduce(:+).round(2)
			@men3=[@etiqueta3,@etiqueta4].reduce(:+).round(2)
			@men4=[@etiqueta4,@etiqueta5].reduce(:+).round(2)
			@men5=[@etiqueta1,@etiqueta5].reduce(:+).round(2)
			@men6=[@etiqueta2,@etiqueta4].reduce(:+).round(2)
			@men7=[@etiqueta3,@etiqueta5].reduce(:+).round(2)
			@men8=[@etiqueta1,@etiqueta4].reduce(:+).round(2)
			@men9=[@etiqueta1,@etiqueta3].reduce(:+).round(2)
			@men10=[@etiqueta5,@etiqueta2].reduce(:+).round(2)
			@array_menu=[@men1,@men2,@men3,@men4,@men5,@men6,@men7,@men8,@men9,@men10]
			expect(@men1).to eq(5966.36)
			expect(@men2).to eq(4987.92)
			expect(@men3).to eq(6371.47)
			expect(@men4).to eq(6729.32)
			expect(@men5).to eq(3703.23)
			expect(@men6).to eq(8992.45)
			expect(@men7).to eq(2724.79)
			expect(@men8).to eq(7349.91)
			expect(@men9).to eq(3345.38)
			expect(@men10).to eq(5345.77)
			expect(@array_menu.orden_for).to eq([@men7,@men9,@men5,@men2,@men10,@men1,@men3,@men4,@men8,@men6])

		end
		it"Ordenacion each" do
			@men1=[@etiqueta1,@etiqueta2].reduce(:+).round(2)
			@men2=[@etiqueta2,@etiqueta3].reduce(:+).round(2)
			@men3=[@etiqueta3,@etiqueta4].reduce(:+).round(2)
			@men4=[@etiqueta4,@etiqueta5].reduce(:+).round(2)
			@men5=[@etiqueta1,@etiqueta5].reduce(:+).round(2)
			@men6=[@etiqueta2,@etiqueta4].reduce(:+).round(2)
			@men7=[@etiqueta3,@etiqueta5].reduce(:+).round(2)
			@men8=[@etiqueta1,@etiqueta4].reduce(:+).round(2)
			@men9=[@etiqueta1,@etiqueta3].reduce(:+).round(2)
			@men10=[@etiqueta5,@etiqueta2].reduce(:+).round(2)
			
			@array_menu=[@men1,@men2,@men3,@men4,@men5,@men6,@men7,@men8,@men9,@men10]
			expect(@array_menu.orden_each).to eq([@men7,@men9,@men5,@men2,@men10,@men1,@men3,@men4,@men8,@men6])
		end
	end
end


