class CalcularImcController < ActionController::API
	
	def create
		imc = Imc.new
		imc.calcular_imc(params[:altura].to_f, params[:peso].to_f)
		render json: imc
	end

end

class Imc
	attr_accessor :imc
	attr_accessor :classificacao
	attr_accessor :grau_obesidade

	def calcular_imc(altura, peso)
		var = peso / (altura * altura)
		@imc = var.round(1)

		if @imc <= 18.5
			@classificacao = "Abaixo"
			@grau_obesidade = "--"
		elsif @imc <= 24.9
			@classificacao = "Peso Ideal"
			@grau_obesidade = "--"
		elsif @imc <= 29.9
			@classificacao = "Sobrepeso"
			@grau_obesidade = "--"
		elsif @imc <= 34.9
			@classificacao = "Obeso"
			@grau_obesidade = "I"
		elsif @imc <= 39.9
			@classificacao = "Obeso"
			@grau_obesidade = "II"
		else 
			@classificacao = "Obeso"
			@grau_obesidade = "III"
		end
	end
end