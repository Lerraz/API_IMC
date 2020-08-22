require 'rails_helper'

#Imagino que tenha formas mais fáceis de fazer, principal com a conversão do Json

RSpec.describe "Post Route", type: :request do
  describe "calcular_imc" do
    
    it "Post - Abaixo do Peso" do
    post "/calcular_imc", params: {"altura": "1.70", "peso": "53"}
    expect(response.body).to eq("{\"imc\":18.3,\"classificacao\":\"Abaixo do Peso\",\"grau_obesidade\":\"--\"}")
    end
    
    it "Post - Peso Ideal" do
    post "/calcular_imc", params: {"altura": "1.70", "peso": "70"}
    expect(response.body).to eq("{\"imc\":24.2,\"classificacao\":\"Peso Ideal\",\"grau_obesidade\":\"--\"}")
    end 

    it "Post - Sobrepeso" do
     post "/calcular_imc", params: {"altura": "1.70", "peso": "75"}
     expect(response.body).to eq("{\"imc\":26.0,\"classificacao\":\"Sobrepeso\",\"grau_obesidade\":\"--\"}")
    end

    it "Post - Obesidade I" do
    post "/calcular_imc", params: {"altura": "1.70", "peso": "88"}
    expect(response.body).to eq("{\"imc\":30.4,\"classificacao\":\"Obesidade\",\"grau_obesidade\":\"I\"}")
    end

    it "Post - Obesidade II" do
    post "/calcular_imc", params: {"altura": "1.70", "peso": "105"}
    expect(response.body).to eq("{\"imc\":36.3,\"classificacao\":\"Obesidade\",\"grau_obesidade\":\"II\"}")
    end

    it "Post - Obesidade III" do
    post "/calcular_imc", params: {"altura": "1.70", "peso": "120"}
    expect(response.body).to eq("{\"imc\":41.5,\"classificacao\":\"Obesidade\",\"grau_obesidade\":\"III\"}")
    end
  end


end
