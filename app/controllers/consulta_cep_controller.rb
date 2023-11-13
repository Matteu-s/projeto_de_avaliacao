class ConsultaCepController < ApplicationController
  def consulta_cep
    address_data = Correios::CEP::AddressFinder.get(params[:zip_code])

    respond_to do |format|
      format.json { render json: address_data }
    end
  end
end
