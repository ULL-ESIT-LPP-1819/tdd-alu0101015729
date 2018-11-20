RSpec.describe Individuo do
	before :each do
		@paciente1=Individuo.new("Manuel Gonzalez Perez",35,"hombre")
		@paciente2=Individuo.new("Kevin Garcia Peña",20,"hombre")
		@paciente3=Individuo.new("Miriam Rodriguez Mendez",23,"mujer")
		@paciente4=Individuo.new("Sonia Garcia Santos",22,"mujer")
		@paciente5=Individuo.new("Jorge González Cabrera",20,"hombre")	
	end

	describe "hacer to_s" do
		it "definir metodo to_s" do
			expect(@paciente1.to_s).to eq("Nombre: Manuel Gonzalez Perez Años: 35 Sexo: hombre")
		end
	end
end
