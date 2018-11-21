RSpec.describe Individuo do
	before :each do
		@persona1=Individuo.new("Manuel Gonzalez Perez",35,"hombre")
		@persona2=Individuo.new("Kevin Garcia Peña",20,"hombre")
		@persona3=Individuo.new("Miriam Rodriguez Mendez",23,"mujer")
		@persona4=Individuo.new("Sonia Garcia Santos",22,"mujer")
		@persona5=Individuo.new("Jorge González Cabrera",20,"hombre")

		@paciente1=Paciente.new("Manuel Gonzalez Perez",35,"hombre",82,1.90)
		@paciente2=Paciente.new("Kevin Garcia Peña",20,"hombre",90,1.70)
		@paciente3=Paciente.new("Miriam Rodriguez Mendez",23,"mujer",40,1.60)
		@paciente4=Paciente.new("Sonia Garcia Santos",22,"mujer",70,1.6)
		@paciente5=Paciente.new("Jorge González Cabrera",20,"hombre",70,1.87)

		@lista=List.new()	
	end

	describe "hacer to_s de la clase Individuo" do
		it "definir metodo to_s" do
			expect(@persona1.to_s).to eq("Nombre: Manuel Gonzalez Perez Años: 35 Sexo: hombre")
		end
	end

	describe "Pruebas de la clase Paciente" do
		it "definir metodo to_s" do
			expect(@paciente1.to_s).to eq("Nombre: Manuel Gonzalez Perez Años: 35 Sexo: hombre Peso: 82 Altura: 1.9")
		end

		it "metodo IMC" do
			expect(@paciente1.imc).to eq("Aceptable")
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
			expect(aceptable).to eq([22.714681440443215, 20.0177299894192])
			expect(sobrepeso).to eq([27.343749999999996])
			expect(obesidad).to eq([31.14186851211073])
			expect(pocopeso).to eq([15.624999999999996])
		end
	end
end
