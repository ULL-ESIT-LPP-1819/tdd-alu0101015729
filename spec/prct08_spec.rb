RSpec.describe Individuo do
	before :each do
		@persona1=Individuo.new("Manuel Gonzalez Perez",35,"hombre")
		@persona2=Individuo.new("Kevin Garcia Peña",20,"hombre")
		@persona3=Individuo.new("Miriam Rodriguez Mendez",23,"mujer")
		@persona4=Individuo.new("Sonia Garcia Santos",22,"mujer")
		@persona5=Individuo.new("Jorge González Cabrera",20,"hombre")

		@paciente1=Paciente.new("Manuel Gonzalez Perez",35,"hombre",82,190,0.0)
		@paciente2=Paciente.new("Kevin Garcia Peña",20,"hombre",90,170,0.12)
		@paciente3=Paciente.new("Miriam Rodriguez Mendez",23,"mujer",40,160,0.27)
		@paciente4=Paciente.new("Sonia Garcia Santos",22,"mujer",70,16,0.54)
		@paciente5=Paciente.new("Jorge González Cabrera",20,"hombre",70,187,0.12)

		@lista=List.new()	
	end

	describe "Pruebas de clase para Individuo y Paciente" do
		it"Individuo" do
			expect(@persona1.class).to eq(Individuo)
			expect(@persona1.class.superclass).to eq(Object)
			expect(@persona1.instance_of? Object).to eq(false)
			expect(@persona1.is_a? Individuo).to eq(true)
		end
		 it"Paciente" do
			expect(@paciente1.class).to eq(Paciente)
			expect(@paciente1.class.superclass).to eq(Individuo)
			expect(@paciente1.instance_of? Object).to eq(false)
			expect(@paciente1.is_a? Paciente).to eq(true)
		end
	end
	describe "hacer to_s de la clase Individuo" do
		it "definir metodo to_s" do
			expect(@persona1.to_s).to eq("Nombre: Manuel Gonzalez Perez Años: 35 Sexo: hombre")
		end
	end

	describe "Pruebas de la clase Paciente" do
		it "definir metodo to_s" do
			expect(@paciente1.to_s).to eq("Nombre: Manuel Gonzalez Perez Años: 35 Sexo: hombre Peso: 82 Altura: 190")
		end

		it "metodo IMC" do
			expect(@paciente1.imc).to eq("Delgado")
		end
		it "Comparaciones IMC" do
			aceptable = []
			sobrepeso = []
			obesidad = []
			pocopeso = []
			@lista.insertar_tail(@paciente1)
			@lista.insertar_tail(@paciente2)
			@lista.insertar_tail(@paciente3)
			@lista.insertar_tail(@paciente4)
			@lista.insertar_tail(@paciente5)
			until @lista.vacia do
				valor=@lista.extraer_head
				if(valor.imc=="Aceptable")
					aceptable.push(valor.imc1)
				elsif(valor.imc=="Sobrepeso")
					sobrepeso.push(valor.imc1)
				elsif(valor.imc=="Obesidad")
					obesidad.push(valor.imc1)
				else
					pocopeso.push(valor.imc1)
				end
			end
			expect(aceptable).to eq([])
			expect(sobrepeso).to eq([])
			expect(obesidad).to eq([])
			expect(pocopeso).to eq([0, 0, 0, 0, 0])
		end
	end
	describe "Comparable" do
		it "Menor" do
			expect(@paciente1.imc1 < @paciente2.imc1).to eq(false)
		end
		it "Mayor" do
			expect(@paciente1.imc1 > @paciente2.imc1).to eq(false)
		end
		it "Igual" do
			expect(@paciente1.imc1 == @paciente2.imc1).to eq(true)
		end
		it "Menor o igual" do
			expect(@paciente1.imc1 <= @paciente2.imc1).to eq(true)
		end
		it "Mayor o igual" do
			expect(@paciente1.imc1 >= @paciente2.imc1).to eq(true)
		end
	end
	describe "Enumerable" do
		it "max" do
			@lista.insertar_tail(@paciente1)
			@lista.insertar_tail(@paciente2)
			expect(@lista.max{|a,b| a.imc1 <=> b.imc1}).to eq(@paciente1)
		end
		it "select" do
			@lista.insertar_tail(@paciente3)
			@lista.insertar_tail(@paciente4)
			expect(@lista.select { |v| v.imc1==15.624999999999996}).to eq([])
		end
		it "min" do
			@lista.insertar_tail(@paciente1)
			@lista.insertar_tail(@paciente2)
			expect(@lista.min{|a,b| a.imc1 <=> b.imc1}).to eq(@paciente1)
		end
		it "collect" do
			@lista.insertar_tail(@paciente5)
			@lista.insertar_tail(@paciente1)
			expect(@lista.collect{"Michael"}).to eq(["Michael","Michael"])
		end
		it "sort" do
			@lista.insertar_tail(@paciente2)
			@lista.insertar_tail(@paciente4)
			expect(@lista.sort{|a,b| a.imc1 <=> b.imc1}).to eq([@paciente2,@paciente4])
		end
	end
	describe"menu" do
		it"gasto_energetico_total" do
			expect(@paciente1.gasto_energetico_total).to eq(2021.25)
		end
		it"gasto_actividad_fisica" do
			expect(@paciente1.gasto_actividad_fisica).to eq(0.0)
		end
		it"efecto_termogeno" do
			expect(@paciente1.efecto_termogeno).to eq(183.75)
		end
		it"peso_teorico_ideal" do
			expect(@paciente1.peso_teorico_ideal).to eq(80.0)
		end
	end
end
