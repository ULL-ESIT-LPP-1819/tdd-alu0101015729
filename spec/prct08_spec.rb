RSpec.describe Individuo do
	before :each do
		@persona1=Individuo.new("Manuel Gonzalez Perez",35,"hombre")
		@persona2=Individuo.new("Kevin Garcia Peña",20,"hombre")
		@persona3=Individuo.new("Miriam Rodriguez Mendez",23,"mujer")
		@persona4=Individuo.new("Sonia Garcia Santos",22,"mujer")
		@persona5=Individuo.new("Jorge González Cabrera",20,"hombre")

		@paciente1=Paciente.new("Manuel Gonzalez Perez",35,"hombre",82,1.90,80,103)	
	end

	describe "hacer to_s de la clase Individuo" do
		it "definir metodo to_s" do
			expect(@persona1.to_s).to eq("Nombre: Manuel Gonzalez Perez Años: 35 Sexo: hombre")
		end
	end

	describe "hacer to_s de la clase Paciente" do
		it "definir metodo to_s" do
			expect(@paciente1.to_s).to eq("Nombre: Manuel Gonzalez Perez Años: 35 Sexo: hombre Peso: 82 Altura: 1.90 Circunferencia Cintura: 80 Circunferencia Cadera: 103" )
		end
	end
end
