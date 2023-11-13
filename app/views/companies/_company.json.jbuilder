json.extract! company, :logo, :id, :name_fantasy, :corporate_reason, :cnpj, :email, :zip_code, :address, :address_number,
              :complement, :state, :city, :neighborhood, :mobile01, :mobile02, :phone01, :phone02, :active, :created_at, 
              :updated_at
json.url company_url(company, format: :json)
