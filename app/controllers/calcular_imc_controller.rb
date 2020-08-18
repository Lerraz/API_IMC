class CalcularImcController < ActionController::API
	
	def create
		imc = Imc.new
		imc.calcular_imc(params[:altura].to_f, params[:peso].to_f)
		render json: imc
	end

end