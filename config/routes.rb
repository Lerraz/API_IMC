Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	resources :calcular_imc

  	#get '/calcular_imc', to: 'calcular_imc#index'
 	#post '/calcular_imc', to: 'calcular_imc#create'

end
